! Author:  Philipp Engel
! Licence: ISC
program main
    use :: ncurses
    implicit none (type, external)

    integer, parameter :: WIDTH  = 30
    integer, parameter :: HEIGHT = 30

    integer     :: ch, rc
    integer     :: n, x, y
    type(c_ptr) :: pad

    call random_init(.false., .false.)

    stdscr = initscr()

    rc = noecho()
    rc = curs_set(0)
    rc = keypad(stdscr, TRUE)

    pad = newpad(HEIGHT, WIDTH)

    do y = 0, HEIGHT - 1
        do x = 0, WIDTH - 1
            n = random_integer(1, 2)
            if (n /= 1) cycle
            rc = mvwaddch(pad, y, x, iachar('*', chtype))
        end do
    end do

    x = 0; y = 0

    rc = box(pad, 0_chtype, 0_chtype)
    rc = mvprintw(12, 1, 'Press <q> to quit.' // c_null_char)
    rc = refresh()

    do
        rc = prefresh(pad, y, x, 1, 1, 10, 20)
        ch = getch()

        select case (ch)
            case (KEY_DOWN);    y = max(0, min(HEIGHT - 10, y + 1))
            case (KEY_UP);      y = max(0, min(HEIGHT - 10, y - 1))
            case (KEY_LEFT);    x = max(0, min(WIDTH - 20, x - 1))
            case (KEY_RIGHT);   x = max(0, min(WIDTH - 20, x + 1))
            case (iachar('q')); exit
        end select
    end do

    rc = delwin(pad)
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
