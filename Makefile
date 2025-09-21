.POSIX:

PREFIX  = /usr/local
AR      = ar
CC      = gcc
FC      = gfortran
RM      = /bin/rm
AFLAGS  = rcs
CFLAGS  = -O2
FFLAGS  = -O2 -std=f2018
LDFLAGS = -L$(PREFIX)/lib
LDLIBS  = -lncurses
INCDIR   = $(PREFIX)/include/libfortran-ncurses
LIBDIR   = $(PREFIX)/lib
TARGET   = libfortran-ncurses.a
EXAMPLES = acs color key label mouse pad scroll ship win

SRC = src/ncurses.f90 \
      src/ncurses_const.f90 \
      src/ncurses_extensions.f90 \
      src/ncurses_macro.c \
      src/ncurses_panel.f90 \
      src/ncurses_util.f90
OBJ = ncurses.o \
      ncurses_const.o \
      ncurses_extensions.o \
      ncurses_macro.o \
      ncurses_panel.o \
      ncurses_util.o

.PHONY: all clean examples install

all: $(TARGET) $(EXAMPLES)

mkconst: util/mkconst.c
	$(CC) $(CFLAGS) -o mkconst util/mkconst.c $(LDLIBS)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -c src/ncurses_macro.c
	$(FC) $(FFLAGS) -c src/ncurses_util.f90
	$(FC) $(FFLAGS) -c src/ncurses_const.f90
	$(FC) $(FFLAGS) -c src/ncurses_extensions.f90
	$(FC) $(FFLAGS) -c src/ncurses_panel.f90
	$(FC) $(FFLAGS) -c src/ncurses.f90
	$(AR) $(AFLAGS) $(TARGET) $(OBJ)

examples: $(EXAMPLES)

acs: $(TARGET) examples/acs.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o acs examples/acs.f90 $(TARGET) $(LDLIBS)

color: $(TARGET) examples/color.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o color examples/color.f90 $(TARGET) $(LDLIBS)

key: $(TARGET) examples/key.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o key examples/key.f90 $(TARGET) $(LDLIBS)

label: $(TARGET) examples/label.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o label examples/label.f90 $(TARGET) $(LDLIBS)

mouse: $(TARGET) examples/mouse.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o mouse examples/mouse.f90 $(TARGET) $(LDLIBS)

pad: $(TARGET) examples/pad.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o pad examples/pad.f90 $(TARGET) $(LDLIBS)

scroll: $(TARGET) examples/scroll.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o scroll examples/scroll.f90 $(TARGET) $(LDLIBS)

ship: $(TARGET) examples/ship.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o ship examples/ship.f90 $(TARGET) $(LDLIBS)

win: $(TARGET) examples/win.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o win examples/win.f90 $(TARGET) $(LDLIBS)

install: $(TARGET)
	@echo "--- Installing library to $(LIBDIR)/ ..."
	install -d $(LIBDIR)
	install -m 644 $(TARGET) $(LIBDIR)/
	@echo "--- Installing module to $(INCDIR)/ ..."
	install -d $(INCDIR)
	install -m 644 ncurses.mod $(INCDIR)/
	install -m 644 ncurses_const.mod $(INCDIR)/
	install -m 644 ncurses_extensions.mod $(INCDIR)/
	install -m 644 ncurses_panel.mod $(INCDIR)/
	install -m 644 ncurses_util.mod $(INCDIR)/

clean:
	if [ `ls -1 *.mod 2>/dev/null | wc -l` -gt 0 ]; then $(RM) *.mod; fi
	if [ `ls -1 *.o 2>/dev/null | wc -l` -gt 0 ]; then $(RM) *.o; fi
	if [ -e $(TARGET) ]; then $(RM) $(TARGET); fi
	if [ -e mkconst ]; then $(RM) mkconst; fi
	if [ -e acs ]; then $(RM) acs; fi
	if [ -e color ]; then $(RM) color; fi
	if [ -e key ]; then $(RM) key; fi
	if [ -e label ]; then $(RM) label; fi
	if [ -e mouse ]; then $(RM) mouse; fi
	if [ -e pad ]; then $(RM) pad; fi
	if [ -e scroll ]; then $(RM) scroll; fi
	if [ -e ship ]; then $(RM) ship; fi
	if [ -e win ]; then $(RM) win; fi
