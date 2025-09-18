! Author:  Philipp Engel
! Licence: ISC
program main
    use :: ncurses
    implicit none (type, external)

    integer(mmask_t) :: mask
    integer          :: ch, rc

    stdscr = initscr()

    rc = noecho()
    rc = curs_set(0)
    rc = keypad(stdscr, TRUE)
    rc = mousemask(ALL_MOUSE_EVENTS, mask)

    if (.not. has_mouse()) then
        rc = endwin()
        print '("No mouse found.")'
        stop
    end if

    rc = addstr('Click for mouse coordinates.' // c_null_char)

    do
        ch = getch()
        if (ch /= KEY_MOUSE) exit
        call mouse_event()
        rc = refresh()
    end do

    rc = endwin()
contains
    subroutine mouse_event()
        type(mevent) :: ev
        integer      :: rc

        rc = getmouse(ev)
        rc = move(1, 0)
        rc = clrtoeol()
        rc = printw('X: ' // c_null_char)
        rc = printw(ev%x)
        rc = move(2, 0)
        rc = clrtoeol()
        rc = printw('Y: ' // c_null_char)
        rc = printw(ev%y)
    end subroutine mouse_event
end program main
