! Author:  Philipp Engel
! Licence: ISC
program main
    use :: ncurses
    implicit none (type, external)

    integer(c_short) :: bg, fg
    integer          :: ch, nn, rc

    ! Initialise curses.
    stdscr = initscr()

    rc = keypad(stdscr, TRUE)
    rc = cbreak()
    rc = curs_set(0)

    if (lines() < 24 .or. cols() < 80) then
        rc = endwin()
        print '("Your terminal needs to be at least 80x24")'
        stop
    end if

    ! Initialise colours.
    if (.not. has_colors()) then
        rc = endwin()
        print '("Your terminal does not support color.")'
        stop
    end if

    rc = start_color()
    rc = attrset(color_pair(7))
    nn = lines() - 1
    rc = mvaddstr( 0, 35, 'COLOR DEMO'                        // c_null_char)
    rc = mvaddstr( 2,  0, 'low intensity text colors (0-7)'   // c_null_char)
    rc = mvaddstr(12,  0, 'high intensity text colors (8-15)' // c_null_char)
    rc = mvaddstr(nn,  0, 'press any key to quit'             // c_null_char)
    rc = attroff(color_pair(7))

    call init_color_pairs()

    ! Draw test pattern.
    do bg = 0, 7
        do fg = 0, 7
            call set_color(fg, bg)
            rc = mvaddstr(fg + 3, bg * 10, '...test...' // c_null_char)
            call unset_color(fg, bg)
        end do

        do fg = 8, 15
            call set_color(fg, bg)
            rc = mvaddstr(fg + 5, bg * 10, '...test...' // c_null_char)
            call unset_color(fg, bg)
        end do
    end do

    rc = refresh()
    ch = getch()
    rc = endwin()
contains
    function color_number(fg, bg) result(pair)
        integer(c_short), intent(in) :: fg, bg
        integer                      :: pair

        integer(c_short) :: b, bb, ff

        b  = shiftl(1_c_short, 7)
        bb = shiftl(iand(7_c_short, bg), 4)
        ff = iand(7_c_short, fg)

        pair = ior(ior(b, bb), ff) - 128
    end function color_number

    function curses_color(fg) result(color)
        integer(c_short), intent(in) :: fg
        integer(c_short)             :: color

        select case (fg)
            case (0); color = COLOR_BLACK
            case (1); color = COLOR_BLUE
            case (2); color = COLOR_GREEN
            case (3); color = COLOR_CYAN
            case (4); color = COLOR_RED
            case (5); color = COLOR_MAGENTA
            case (6); color = COLOR_YELLOW
            case (7); color = COLOR_WHITE
        end select
    end function curses_color

    subroutine init_color_pairs()
        integer(c_short) :: bg, fg, pair
        integer          :: rc

        do bg = 0, 7
            do fg = 0, 7
                pair = int(color_number(fg, bg), c_short)
                rc   = init_pair(pair, curses_color(fg), curses_color(bg))
            end do
        end do
    end subroutine init_color_pairs

    logical function is_bold(fg)
        integer(c_short), intent(in) :: fg

        is_bold = (iand(shiftl(1_c_short, 3), fg) /= 0)
    end function is_bold

    subroutine set_color(fg, bg)
        integer(c_short), intent(in) :: fg, bg

        integer :: rc

        rc = attron(color_pair(color_number(fg, bg)))
        if (is_bold(fg)) rc = attron(A_BOLD)
    end subroutine set_color

    subroutine unset_color(fg, bg)
        integer(c_short), intent(in) :: fg, bg

        integer :: rc

        rc = attroff(color_pair(color_number(fg, bg)))
        if (is_bold(fg)) rc = attroff(A_BOLD)
    end subroutine unset_color
end program main
