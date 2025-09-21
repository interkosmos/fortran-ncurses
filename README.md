# fortran-ncurses

A work-in-progress collection of auto-generated ISO C binding interfaces to
ncurses for Fortran 2018, similar to
[M_ncurses](https://github.com/urbanjost/M_ncurses).

## Build Instructions

Execute the Makefile to build and install the library:

```
$ make
$ make install PREFIX=/opt
```

Depending on the ncurses library installed locally, you may have to generate the
constants module `ncurses_const.f90`, for instance:

```
$ make mkconst
$ ./mkconst src/ncurses_const.f90
```

## Example

Basic example program to initialise ncurses and output a string:

```fortran
! example.f90
program main
    use :: ncurses
    implicit none (type, external)

    integer :: ch, rc

    stdscr = initscr()
    rc = noecho()
    rc = curs_set(0)
    rc = printw('Hello, World!' // c_null_char)
    ch = getch()
    rc = endwin()
end program main
```

Compile, link, and run the program:

```
$ gfortran -I/opt/include -o example example.f90 /opt/lib/libfortran-ncurses.a -lncurses
$ ./example
```

## Fortran Package Manager

You can add _fortran-ncurses_ as an FPM dependency to your `fpm.toml`:

```toml
[dependencies]
fortran-ncurses = { git = "https://github.com/interkosmos/fortran-ncurses.git" }
```

## Compatibility

* All character strings passed to the interfaces have to be null-terminated
  with `c_null_char`.
* The ncurses macros `COLOR_PAIR`, `COLOR_PAIRS`, `COLORS`, `COLS`, `LINES` and
  `PAIR_NUMBER` are bound through functions of the same name.

## References

* Pradeep Padala, Thomas E. Dickey: [NCURSES Programming HOWTO](https://invisible-island.net/ncurses/howto/NCURSES-Programming-HOWTO.html)
* Eric S. Raymond, Zeyd M. Ben-Halim, Thomas E. Dickey: [Writing Programs with NCURSES](https://invisible-island.net/ncurses/ncurses-intro.html)
* [ncurses manuals](https://alfonsosiciliano.gitlab.io/posts/2021-11-03-ncurses-manuals.html)

## Licence

ISC
