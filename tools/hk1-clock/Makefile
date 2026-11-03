CC ?= gcc
CFLAGS ?= -O2 -Wall
TARGET = hk1-clock
SRC = hk1_vfd_clock.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)
	strip --strip-all $(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all clean
