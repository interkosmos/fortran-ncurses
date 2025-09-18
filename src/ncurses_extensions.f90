! Author:  Philipp Engel
! Licence: ISC
module ncurses_extensions
    !! Auto-generated Fortran 2018 interface bindings to ncurses extensions.
    use, intrinsic :: iso_c_binding
    implicit none (type, external)
    public

    interface
        ! int alloc_pair(int fg, int bg)
        function alloc_pair(fg, bg) bind(c, name='alloc_pair')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: fg
            integer(c_int), intent(in), value :: bg
            integer(c_int)                    :: alloc_pair
        end function alloc_pair

        ! int assume_default_colors(int fg, int bg)
        function assume_default_colors(fg, bg) bind(c, name='assume_default_colors')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: fg
            integer(c_int), intent(in), value :: bg
            integer(c_int)                    :: assume_default_colors
        end function assume_default_colors

        ! const char *curses_version(void)
        function curses_version_() bind(c, name='curses_version')
            import :: c_ptr
            implicit none
            type(c_ptr) :: curses_version_
        end function curses_version_

        ! int extended_color_content(int color, int *r, int *g, int *b)
        function extended_color_content(color, r, g, b) bind(c, name='extended_color_content')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: color
            integer(c_int), intent(out)       :: r
            integer(c_int), intent(out)       :: g
            integer(c_int), intent(out)       :: b
            integer(c_int)                    :: extended_color_content
        end function extended_color_content

        ! int extended_pair_content(int pair, int *f, int *b)
        function extended_pair_content(pair, f, b) bind(c, name='extended_pair_content')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: pair
            integer(c_int), intent(out)       :: f
            integer(c_int), intent(out)       :: b
            integer(c_int)                    :: extended_pair_content
        end function extended_pair_content

        ! int find_pair(int fg, int bg)
        function find_pair(fg, bg) bind(c, name='find_pair')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: fg
            integer(c_int), intent(in), value :: bg
            integer(c_int)                    :: find_pair
        end function find_pair

        ! int free_pair(int pair)
        function free_pair(pair) bind(c, name='free_pair')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: pair
            integer(c_int)                    :: free_pair
        end function free_pair

        ! int get_escdelay(void)
        function get_escdelay() bind(c, name='get_escdelay')
            import :: c_int
            implicit none
            integer(c_int) :: get_escdelay
        end function get_escdelay

        ! int init_extended_color(int color, int r, int g, int b)
        function init_extended_color(color, r, g, b) bind(c, name='init_extended_color')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: color
            integer(c_int), intent(in), value :: r
            integer(c_int), intent(in), value :: g
            integer(c_int), intent(in), value :: b
            integer(c_int)                    :: init_extended_color
        end function init_extended_color

        ! int init_extended_pair(int pair, int f, int b)
        function init_extended_pair(pair, f, b) bind(c, name='init_extended_pair')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: pair
            integer(c_int), intent(in), value :: f
            integer(c_int), intent(in), value :: b
            integer(c_int)                    :: init_extended_pair
        end function init_extended_pair

        ! bool is_term_resized(int lines, int columns)
        function is_term_resized(lines, columns) bind(c, name='is_term_resized')
            import :: c_bool, c_int
            implicit none
            integer(c_int), intent(in), value :: lines
            integer(c_int), intent(in), value :: columns
            logical(c_bool)                   :: is_term_resized
        end function is_term_resized

        ! char *keybound(int keycode, int count)
        function keybound_(keycode, count) bind(c, name='keybound')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: keycode
            integer(c_int), intent(in), value :: count
            type(c_ptr)                       :: keybound_
        end function keybound_

        ! void reset_color_pairs(void)
        subroutine reset_color_pairs() bind(c, name='reset_color_pairs')
        end subroutine reset_color_pairs

        ! int resize_term(int lines, int columns)
        function resize_term(lines, columns) bind(c, name='resize_term')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: lines
            integer(c_int), intent(in), value :: columns
            integer(c_int)                    :: resize_term
        end function resize_term

        ! int resizeterm(int lines, int columns)
        function resizeterm(lines, columns) bind(c, name='resizeterm')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: lines
            integer(c_int), intent(in), value :: columns
            integer(c_int)                    :: resizeterm
        end function resizeterm

        ! int set_escdelay(int ms)
        function set_escdelay(ms) bind(c, name='set_escdelay')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: ms
            integer(c_int)                    :: set_escdelay
        end function set_escdelay

        ! int set_tabsize(int cols)
        function set_tabsize(cols) bind(c, name='set_tabsize')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: cols
            integer(c_int)                    :: set_tabsize
        end function set_tabsize

        ! int use_default_colors(void)
        function use_default_colors() bind(c, name='use_default_colors')
            import :: c_int
            implicit none
            integer(c_int) :: use_default_colors
        end function use_default_colors

        ! int use_extended_names(bool enable)
        function use_extended_names(enable) bind(c, name='use_extended_names')
            import :: c_bool, c_int
            implicit none
            logical(c_bool), intent(in), value :: enable
            integer(c_int)                     :: use_extended_names
        end function use_extended_names

        ! int use_legacy_coding(int level)
        function use_legacy_coding(level) bind(c, name='use_legacy_coding')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: level
            integer(c_int)                    :: use_legacy_coding
        end function use_legacy_coding

        ! int wresize(WINDOW *win, int lines, int columns)
        function wresize(win, lines, columns) bind(c, name='wresize')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: lines
            integer(c_int), intent(in), value :: columns
            integer(c_int)                    :: wresize
        end function wresize
    end interface
contains
    function curses_version() result(str)
        use :: ncurses_util
        character(:), allocatable  :: str

        type(c_ptr) :: ptr

        ptr = curses_version_()
        call c_f_str_ptr(ptr, str)
    end function curses_version

    function keybound(keycode, count) result(str)
        use :: ncurses_util
        integer(c_int), intent(in) :: keycode
        integer(c_int), intent(in) :: count
        character(:), allocatable  :: str

        type(c_ptr) :: ptr

        ptr = keybound_(keycode, count)
        call c_f_str_ptr(ptr, str)
    end function keybound
end module ncurses_extensions
