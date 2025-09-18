! Author:  Philipp Engel
! Licence: ISC
program main
    use :: ncurses
    implicit none (type, external)

    character(32) :: str
    integer       :: ch, nn, nx, ny, rc
    integer       :: i, w, h

    call random_init(.false., .false.)

    stdscr = initscr()
    call getmaxyx(stdscr, h, w)

    rc = keypad(stdscr, TRUE)
    rc = noecho()
    rc = curs_set(0)
    rc = scrollok(stdscr, TRUE)
    rc = scroll(stdscr)
    nx = w / 2
    ny = 10

    do
        rc = scrl(1)

        do i = 0, 5
            nn = random_integer(0, w - 1)
            rc = mvaddch(20, nn, iachar('*', chtype))
        end do

        write (str, '("Position: ", i0, a1)') nx, c_null_char
        rc = mvprintw(0, 0, '<q> quit  <left> move left  <right> move right' // c_null_char)
        rc = mvprintw(1, 0, str)

        ch = getch()
        rc = halfdelay(3)

        select case (ch)
            case (iachar('q'))
                exit

            case (KEY_LEFT)
                if (nx < 1) then
                    nx = w - 2
                else
                    nx = nx - 1
                end if

            case (KEY_RIGHT)
                if (nx > w - 1) then
                    nx = 1
                else
                    nx = nx + 1
                end if
        end select

        call print_ship(nx, ny)
    end do

    rc = endwin()
contains
    subroutine print_ship(x, y)
        integer, intent(in) :: x, y

        integer :: rc

        rc = mvdelch(y - 1, x + 2)
        rc = mvdelch(y - 1, x + 1)
        rc = mvdelch(y - 1, x)
        rc = mvdelch(y - 1, x - 1)
        rc = mvdelch(y - 1, x - 2)
        rc = mvaddch(y,     x - 1, ACS_LLCORNER)
        rc = mvaddch(y,     x + 1, ACS_LRCORNER)
        rc = mvaddch(y,     x,     ACS_TTEE)
    end subroutine print_ship

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
