! Author:  Philipp Engel
! Licence: ISC
program main
    use :: ncurses
    implicit none (type, external)

    integer :: ch, rc

    stdscr = initscr()

    rc = noecho()
    rc = curs_set(0)

    ! Alternative Character Set (ACS)
    rc = mvaddstr(0,  0, 'ACS_BLOCK    ' // c_null_char); rc = addch(ACS_BLOCK)
    rc = mvaddstr(1,  0, 'ACS_BOARD    ' // c_null_char); rc = addch(ACS_BOARD)
    rc = mvaddstr(2,  0, 'ACS_BTEE     ' // c_null_char); rc = addch(ACS_BTEE)
    rc = mvaddstr(3,  0, 'ACS_BULLET   ' // c_null_char); rc = addch(ACS_BULLET)
    rc = mvaddstr(4,  0, 'ACS_CKBOARD  ' // c_null_char); rc = addch(ACS_CKBOARD)
    rc = mvaddstr(5,  0, 'ACS_DARROW   ' // c_null_char); rc = addch(ACS_DARROW)
    rc = mvaddstr(6,  0, 'ACS_DEGREE   ' // c_null_char); rc = addch(ACS_DEGREE)
    rc = mvaddstr(7,  0, 'ACS_DIAMOND  ' // c_null_char); rc = addch(ACS_DIAMOND)
    rc = mvaddstr(8,  0, 'ACS_GEQUAL   ' // c_null_char); rc = addch(ACS_GEQUAL)
    rc = mvaddstr(9,  0, 'ACS_HLINE    ' // c_null_char); rc = addch(ACS_HLINE)
    rc = mvaddstr(0, 15, 'ACS_LANTERN  ' // c_null_char); rc = addch(ACS_LANTERN)
    rc = mvaddstr(1, 15, 'ACS_LARROW   ' // c_null_char); rc = addch(ACS_LARROW)
    rc = mvaddstr(2, 15, 'ACS_LEQUAL   ' // c_null_char); rc = addch(ACS_LEQUAL)
    rc = mvaddstr(3, 15, 'ACS_LLCORNER ' // c_null_char); rc = addch(ACS_LLCORNER)
    rc = mvaddstr(4, 15, 'ACS_LRCORNER ' // c_null_char); rc = addch(ACS_LRCORNER)
    rc = mvaddstr(5, 15, 'ACS_LTEE     ' // c_null_char); rc = addch(ACS_LTEE)
    rc = mvaddstr(6, 15, 'ACS_NEQUAL   ' // c_null_char); rc = addch(ACS_NEQUAL)
    rc = mvaddstr(7, 15, 'ACS_PI       ' // c_null_char); rc = addch(ACS_PI)
    rc = mvaddstr(8, 15, 'ACS_PLMINUS  ' // c_null_char); rc = addch(ACS_PLMINUS)
    rc = mvaddstr(9, 15, 'ACS_PLUS     ' // c_null_char); rc = addch(ACS_PLUS)
    rc = mvaddstr(0, 31, 'ACS_RARROW   ' // c_null_char); rc = addch(ACS_RARROW)
    rc = mvaddstr(1, 31, 'ACS_RTEE     ' // c_null_char); rc = addch(ACS_RTEE)
    rc = mvaddstr(2, 31, 'ACS_S1       ' // c_null_char); rc = addch(ACS_S1)
    rc = mvaddstr(3, 31, 'ACS_S3       ' // c_null_char); rc = addch(ACS_S3)
    rc = mvaddstr(4, 31, 'ACS_S7       ' // c_null_char); rc = addch(ACS_S7)
    rc = mvaddstr(5, 31, 'ACS_S9       ' // c_null_char); rc = addch(ACS_S9)
    rc = mvaddstr(6, 31, 'ACS_STERLING ' // c_null_char); rc = addch(ACS_STERLING)
    rc = mvaddstr(7, 31, 'ACS_TTEE     ' // c_null_char); rc = addch(ACS_TTEE)
    rc = mvaddstr(8, 31, 'ACS_UARROW   ' // c_null_char); rc = addch(ACS_UARROW)
    rc = mvaddstr(9, 31, 'ACS_ULCORNER ' // c_null_char); rc = addch(ACS_ULCORNER)
    rc = mvaddstr(0, 47, 'ACS_URCORNER ' // c_null_char); rc = addch(ACS_URCORNER)
    rc = mvaddstr(1, 47, 'ACS_VLINE    ' // c_null_char); rc = addch(ACS_VLINE)

    ch = getch()
    rc = endwin()
end program main
