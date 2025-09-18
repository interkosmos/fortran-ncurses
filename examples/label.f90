! Author:  Philipp Engel
! Licence: ISC
program main
    use :: ncurses
    implicit none (type, external)

    character(:), allocatable :: str
    integer                   :: ch, rc

    rc = slk_init(1)
    stdscr = initscr()

    rc = noecho()
    rc = curs_set(0)
    rc = keypad(stdscr, TRUE)

    ! The slk_set routine requires labnum to be a label number, from 1 to 8
    ! (resp. 12); label must be the string to be put on the label, up to eight
    ! (resp. five) characters in length. A null string or a null pointer sets up
    ! a blank label. fmt is either 0, 1, or 2, indicating whether the label is
    ! to be left-justified, centered, or right-justified, respectively, within
    ! the label.
    rc = slk_set(1, 'F1' // c_null_char, 1)
    rc = slk_set(2, 'F2' // c_null_char, 1)
    rc = slk_set(3, 'F3' // c_null_char, 1)
    rc = slk_set(4, 'F4' // c_null_char, 1)
    rc = slk_set(5, 'F5' // c_null_char, 1)
    rc = slk_refresh()

    rc = addstr('Press <Enter> to exit.' // c_null_char)

    do
        ch = getch()
        rc = move(1, 0)

        if (ch == 10) exit

        select case (ch)
            case (KEY_F(1))
                rc = addstr('You pressed F1' // c_null_char)
                rc = slk_clear()
            case (KEY_F(2))
                rc = addstr('You pressed F2' // c_null_char)
                rc = slk_restore()
            case (KEY_F(3))
                str = slk_label(3)
                rc = addstr('You pressed ' // str // c_null_char)
            case (KEY_F(4))
                rc = addstr('You pressed F4' // c_null_char)
            case (KEY_F(5))
                rc = addstr('You pressed F5' // c_null_char)
        end select

        rc = refresh()
    end do

    rc = endwin()
end program main
