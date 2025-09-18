! Author:  Philipp Engel
! Licence: ISC
program main
    use :: ncurses
    implicit none (type, external)

    integer     :: ch, rc
    integer     :: w, h, x, y
    type(c_ptr) :: win

    ! Initialise curses.
    stdscr = initscr()

    rc = cbreak()
    rc = noecho()
    rc = curs_set(0)

    rc = printw('Press any key to exit.' // c_null_char)
    rc = refresh()

    ! Create window.
    h = 5; w = 20; x = 5; y = 2
    win = newwin(h, w, y, x)

    rc = box(win, 0_chtype, 0_chtype)
    rc = mvwprintw(win, 1, 1, 'Window' // c_null_char)
    rc = wrefresh(win)

    ch = getch()
    rc = delwin(win)
    rc = endwin()
end program main
