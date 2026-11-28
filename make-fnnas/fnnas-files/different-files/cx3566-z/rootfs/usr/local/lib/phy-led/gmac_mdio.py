#!/usr/bin/env python3
"""Direct GMAC4 MDIO access via /dev/mem (RK3566 GMAC @ 0xfe010000).
Reads MDIO_ADDR first to reuse the driver's clk_csr, validates with the
PHY ID (reg2 == 0x7b74), then reads LEDCR (page 0xd04, reg 16).
Usage: gmac_mdio.py [ledcr]  — no writes except the page-select dance."""
import mmap
import struct
import sys
import time

BASE = 0xFE010000
ADDR_OFF, DATA_OFF = 0x200, 0x204
BUSY, GOC_WRITE, GOC_READ = 0x1, 0x4, 0xC


class Gmac:
    def __init__(self):
        self.f = open("/dev/mem", "r+b")
        self.mm = mmap.mmap(self.f.fileno(), 0x1000, offset=BASE)

    def r(self, off):
        return struct.unpack_from("<I", self.mm, off)[0]

    def w(self, off, val):
        struct.pack_into("<I", self.mm, off, val)

    def wait_idle(self):
        for _ in range(200):
            if not (self.r(ADDR_OFF) & BUSY):
                return
            time.sleep(0.0001)
        raise RuntimeError("MDIO stuck busy")

    def _transact(self, phy, reg, goc, data=0):
        cr = (self.r(ADDR_OFF) >> 8) & 0xF
        self.wait_idle()
        self.w(DATA_OFF, data)
        val = BUSY | goc | (cr << 8) | (reg << 16) | (phy << 21)
        self.w(ADDR_OFF, val)
        self.wait_idle()
        return self.r(DATA_OFF) & 0xFFFF

    def read(self, phy, reg):
        return self._transact(phy, reg, GOC_READ)

    def write(self, phy, reg, val):
        self._transact(phy, reg, GOC_WRITE, val)


def main():
    g = Gmac()
    idle = g.r(ADDR_OFF)
    print(f"MDIO_ADDR idle = 0x{idle:08x} (clk_csr={(idle >> 8) & 0xF})")
    id2 = g.read(0, 2)
    id3 = g.read(0, 3)
    print(f"PHY ID: 0x{id2:04x} 0x{id3:04x}")
    if id2 != 0x7B74:
        print("ABORT: unexpected PHY ID, not writing anything")
        return
    if len(sys.argv) > 1 and sys.argv[1] == "ledcr":
        g.write(0, 31, 0x0D04)
        ledcr = g.read(0, 16)
        g.write(0, 31, 0x0000)
        print(f"LEDCR (page 0xd04 reg16) = 0x{ledcr:04x}")


if __name__ == "__main__":
    main()