import sys
sys.path.insert(0, '/usr/local/lib/phy-led')
from gmac_mdio import Gmac
TARGET = 0x0368
g = Gmac()
id2 = g.read(0, 2)
if id2 != 0x7B74:
    print(f"ABORT: unexpected PHY ID {id2:#06x}")
    sys.exit(1)
g.write(0, 31, 0x0D04)
cur = g.read(0, 16)
if cur != TARGET:
    g.write(0, 16, TARGET)
    cur = g.read(0, 16)
g.write(0, 31, 0x0000)
print(f"LCR = 0x{cur:04x}")
sys.exit(0 if cur == TARGET else 1)