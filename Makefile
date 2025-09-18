.POSIX:

PREFIX  = /usr/local
AR      = ar
CC      = gcc
FC      = gfortran
AFLAGS  = rcs
CFLAGS  = -O2
FFLAGS  = -O2 -std=f2018
LDFLAGS = -L$(PREFIX)/lib
LDLIBS  = -lncurses
INCDIR   = $(PREFIX)/include/libfortran-ncurses
LIBDIR   = $(PREFIX)/lib
TARGET   = libfortran-ncurses.a
EXAMPLES = acs color key label mouse scroll win

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

scroll: $(TARGET) examples/scroll.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o scroll examples/scroll.f90 $(TARGET) $(LDLIBS)

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
	if [ `ls -1 *.mod 2>/dev/null | wc -l` -gt 0 ]; then rm *.mod; fi
	if [ `ls -1 *.o 2>/dev/null | wc -l` -gt 0 ]; then rm *.o; fi
	if [ -e $(TARGET) ]; then rm $(TARGET); fi
	if [ -e mkconst ]; then rm mkconst; fi
	if [ -e acs ]; then rm acs; fi
	if [ -e color ]; then rm color; fi
	if [ -e key ]; then rm key; fi
	if [ -e label ]; then rm label; fi
	if [ -e mouse ]; then rm mouse; fi
	if [ -e scroll ]; then rm scroll; fi
	if [ -e win ]; then rm win; fi
