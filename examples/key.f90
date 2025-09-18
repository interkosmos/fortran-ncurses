! Author:  Philipp Engel
! Licence: ISC
program main
    use :: ncurses
    implicit none (type, external)

    character(*), parameter :: Z = c_new_line // c_null_char

    character(16) :: str
    integer       :: ch, rc

    stdscr = initscr()

    rc = raw()                ! Disable line buffering.
    rc = nonl()               ! Tell curses not to do NL -> CR/NL on output.
    rc = noecho()             ! Disable output.
    rc = curs_set(0)          ! Disable cursor.
    rc = keypad(stdscr, TRUE) ! Enable keypad and function keys.

    rc = printw('Type any character to see it in bold:' // Z)
    ch = getch()

    if (ch == KEY_F(1)) then
        rc = printw('F1 key pressed' // Z)
    else
        rc = printw('The pressed key is ' // c_null_char)
        rc = attron(A_BOLD)
        rc = printw(achar(ch) // Z)
        rc = attroff(A_BOLD)
    end if

    rc = noraw() ! Enable line buffering.
    rc = echo()  ! Enable output.

    str = ' '
    rc = printw('Type a string to read in:' // Z)
    rc = getnstr(str, len(str))
    rc = mvaddstr(6,  0, 'Your input: ' // trim(str) // c_null_char)

    rc = raw()
    rc = noecho()
    rc = refresh()
    ch = getch()
    rc = endwin()
end program main
