! Author:  Philipp Engel
! Licence: ISC
program main
    use :: ncurses
    implicit none (type, external)

    character(250) :: a
    integer        :: ch, dr, ml, rc
    integer        :: gw, lw, rw
    integer        :: w, h

    call random_init(.false., .false.)

    stdscr = initscr()
    call getmaxyx(stdscr, h, w)

    rc = cbreak()
    rc = noecho()
    rc = curs_set(0)
    rc = scrollok(stdscr, TRUE)

    ml = min(len(a) - 2, w)
    gw = 15
    lw = (ml / 2) - (gw / 2)

    do
        dr = random_integer(1, 6)

        if (dr == 1 .and. lw > 1) then
            lw = lw - 1
        else if (dr == 2 .and. lw + gw < ml - 1) then
            lw = lw + 1
        end if

        rw = ml - gw - lw
        write (a, '(4a)') repeat('#', lw), repeat(' ', gw), repeat('#', rw), c_null_char

        rc = printw(a)
        rc = refresh()
        rc = napms(100)
    end do

    rc = endwin()
contains
    integer function random_integer(a, b) result(n)
        integer, intent(in) :: a, b

        integer :: i, j
        real    :: u

        i = min(a, b)
        j = max(a, b)

        call random_number(u)
        n = i + floor((j + 1 - i) * u)
    end function random_integer
end program main
