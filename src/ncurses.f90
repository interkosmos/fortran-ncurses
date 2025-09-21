! Author:  Philipp Engel
! Licence: ISC
module ncurses
    !! Auto-generated Fortran 2018 interface bindings to ncurses. Link against
    !! `-lncurses`.
    use, intrinsic :: iso_c_binding
    use :: ncurses_const
    implicit none (type, external)
    public

    integer, parameter :: attr_t  = c_long
    integer, parameter :: chtype  = c_long
    integer, parameter :: mmask_t = c_int

    integer(c_int), parameter :: ERR = -1
    integer(c_int), parameter :: OK  = 0

    logical(c_bool), parameter :: FALSE = .false._c_bool
    logical(c_bool), parameter :: TRUE  = .true._c_bool

    type(c_ptr), save :: stdscr = c_null_ptr

    ! struct MEVENT
    type, bind(c) :: mevent
        integer(c_short) :: id     = 0_c_short
        integer(c_int)   :: x      = 0_c_int
        integer(c_int)   :: y      = 0_c_int
        integer(c_int)   :: z      = 0_c_int
        integer(mmask_t) :: bstate = 0_mmask_t
    end type mevent

    interface
        ! int addch(const chtype ch)
        function addch(ch) bind(c, name='addch')
            import :: c_int, chtype
            implicit none
            integer(chtype), intent(in), value :: ch
            integer(c_int)                     :: addch
        end function addch

        ! int addchnstr(const chtype *chstr, int n)
        function addchnstr(chstr, n) bind(c, name='addchnstr')
            import :: c_int, chtype
            implicit none
            integer(chtype), intent(in)        :: chstr(*)
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: addchnstr
        end function addchnstr

        ! int addchstr(const chtype *chstr)
        function addchstr(chstr) bind(c, name='addchstr')
            import :: c_int, chtype
            implicit none
            integer(chtype), intent(in) :: chstr(*)
            integer(c_int)              :: addchstr
        end function addchstr

        ! int addnstr(const char *str, int n)
        function addnstr(str, n) bind(c, name='addnstr')
            import :: c_char, c_int
            implicit none
            character(c_char), intent(in)        :: str
            integer(c_int),    intent(in), value :: n
            integer(c_int)                       :: addnstr
        end function addnstr

        ! int addstr(const char *str)
        function addstr(str) bind(c, name='addstr')
            import :: c_char, c_int
            implicit none
            character(c_char), intent(in) :: str
            integer(c_int)                :: addstr
        end function addstr

       ! int attr_get(attr_t *attrs, short *pair, void *opts)
        function attr_get(attrs, pair, opts) bind(c, name='attr_get')
            import :: attr_t, c_int, c_ptr, c_short
            implicit none
            integer(attr_t),  intent(out)       :: attrs
            integer(c_short), intent(out)       :: pair
            type(c_ptr),      intent(in), value :: opts
            integer(c_int)                      :: attr_get
        end function attr_get

        ! int attr_off(attr_t attrs, void *opts)
        function attr_off(attrs, opts) bind(c, name='attr_off')
            import :: attr_t, c_int, c_ptr
            implicit none
            integer(attr_t), intent(in), value :: attrs
            type(c_ptr),     intent(in), value :: opts
            integer(c_int)                     :: attr_off
        end function attr_off

        ! int attr_on(attr_t attrs, void *opts)
        function attr_on(attrs, opts) bind(c, name='attr_on')
            import :: attr_t, c_int, c_ptr
            implicit none
            integer(attr_t), intent(in), value :: attrs
            type(c_ptr),     intent(in), value :: opts
            integer(c_int)                     :: attr_on
        end function attr_on

        ! int attr_set(attr_t attrs, short pair, void *opts)
        function attr_set(attrs, pair, opts) bind(c, name='attr_set')
            import :: attr_t, c_int, c_ptr, c_short
            implicit none
            integer(attr_t),  intent(in), value :: attrs
            integer(c_short), intent(in), value :: pair
            type(c_ptr),      intent(in), value :: opts
            integer(c_int)                      :: attr_set
        end function attr_set

        ! int attroff(int attrs)
        function attroff(attrs) bind(c, name='attroff')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: attrs
            integer(c_int)                    :: attroff
        end function attroff

        ! int attron(int attrs)
        function attron(attrs) bind(c, name='attron')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: attrs
            integer(c_int)                    :: attron
        end function attron

        ! int attrset(int attrs)
        function attrset(attrs) bind(c, name='attrset')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: attrs
            integer(c_int)                    :: attrset
        end function attrset

        ! int beep(void)
        function beep() bind(c, name='beep')
            import :: c_int
            implicit none
            integer(c_int) :: beep
        end function beep

        ! int bkgd(chtype ch)
        function bkgd(ch) bind(c, name='bkgd')
            import :: c_int, chtype
            implicit none
            integer(chtype), intent(in), value :: ch
            integer(c_int)                     :: bkgd
        end function bkgd

        ! void bkgdset(chtype ch)
        subroutine bkgdset(ch) bind(c, name='bkgdset')
            import :: chtype
            implicit none
            integer(chtype), intent(in), value :: ch
        end subroutine bkgdset

        ! int border(chtype ls, chtype rs, chtype ts, chtype bs, chtype tl, chtype tr, chtype bl, chtype br)
        function border(ls, rs, ts, bs, tl, tr, bl, br) bind(c, name='border')
            import :: c_int, chtype
            implicit none
            integer(chtype), intent(in), value :: ls
            integer(chtype), intent(in), value :: rs
            integer(chtype), intent(in), value :: ts
            integer(chtype), intent(in), value :: bs
            integer(chtype), intent(in), value :: tl
            integer(chtype), intent(in), value :: tr
            integer(chtype), intent(in), value :: bl
            integer(chtype), intent(in), value :: br
            integer(c_int)                     :: border
        end function border

        ! int box(WINDOW *win, chtype verch, chtype horch)
        function box(win, verch, horch) bind(c, name='box')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(chtype), intent(in), value :: verch
            integer(chtype), intent(in), value :: horch
            integer(c_int)                     :: box
        end function box

        ! bool can_change_color(void)
        function can_change_color() bind(c, name='can_change_color')
            import :: c_bool
            implicit none
            logical(c_bool) :: can_change_color
        end function can_change_color

        ! int cbreak(void)
        function cbreak() bind(c, name='cbreak')
            import :: c_int
            implicit none
            integer(c_int) :: cbreak
        end function cbreak

        ! int chgat(int n, attr_t attr, short color, const void *opts)
        function chgat(n, attr, color, opts) bind(c, name='chgat')
            import :: attr_t, c_int, c_ptr, c_short
            implicit none
            integer(c_int),   intent(in), value :: n
            integer(attr_t),  intent(in), value :: attr
            integer(c_short), intent(in), value :: color
            type(c_ptr),      intent(in), value :: opts
            integer(c_int)                      :: chgat
        end function chgat

        ! int clear(void)
        function clear() bind(c, name='clear')
            import :: c_int
            implicit none
            integer(c_int) :: clear
        end function clear

        ! int clearok(WINDOW *win, bool bf)
        function clearok(win, bf) bind(c, name='clearok')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            logical(c_bool), intent(in), value :: bf
            integer(c_int)                     :: clearok
        end function clearok

        ! int clrtobot(void)
        function clrtobot() bind(c, name='clrtobot')
            import :: c_int
            implicit none
            integer(c_int) :: clrtobot
        end function clrtobot

        ! int clrtoeol(void)
        function clrtoeol() bind(c, name='clrtoeol')
            import :: c_int
            implicit none
            integer(c_int) :: clrtoeol
        end function clrtoeol

        ! int color_content(short color, short *r, short *g, short *b)
        function color_content(color, r, g, b) bind(c, name='color_content')
            import :: c_int, c_short
            implicit none
            integer(c_short), intent(in), value :: color
            integer(c_short), intent(out)       :: r
            integer(c_short), intent(out)       :: g
            integer(c_short), intent(out)       :: b
            integer(c_int)                      :: color_content
        end function color_content

        ! int color_set(short color_pair_number, void* opts)
        function color_set(color_pair_number) bind(c, name='color_set')
            import :: c_int, c_short
            implicit none
            integer(c_short), intent(in), value :: color_pair_number
            integer(c_int)                      :: color_set
        end function color_set

        ! int copywin(const WINDOW *srcwin, WINDOW *dstwin, int sminrow, int smincol, int dminrow, int dmincol, int dmaxrow, int dmaxcol, int overlay)
        function copywin(srcwin, dstwin, sminrow, smincol, dminrow, dmincol, dmaxrow, dmaxcol, overlay) bind(c, name='copywin')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: srcwin
            type(c_ptr),    intent(in), value :: dstwin
            integer(c_int), intent(in), value :: sminrow
            integer(c_int), intent(in), value :: smincol
            integer(c_int), intent(in), value :: dminrow
            integer(c_int), intent(in), value :: dmincol
            integer(c_int), intent(in), value :: dmaxrow
            integer(c_int), intent(in), value :: dmaxcol
            integer(c_int), intent(in), value :: overlay
            integer(c_int)                    :: copywin
        end function copywin

        ! int curs_set(int visibility)
        function curs_set(visibility) bind(c, name='curs_set')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: visibility
            integer(c_int)                    :: curs_set
        end function curs_set

        ! int def_prog_mode(void)
        function def_prog_mode() bind(c, name='def_prog_mode')
            import :: c_int
            implicit none
            integer(c_int) :: def_prog_mode
        end function def_prog_mode

        ! int def_shell_mode(void)
        function def_shell_mode() bind(c, name='def_shell_mode')
            import :: c_int
            implicit none
            integer(c_int) :: def_shell_mode
        end function def_shell_mode

        ! int delay_output(int ms)
        function delay_output(ms) bind(c, name='delay_output')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: ms
            integer(c_int)                    :: delay_output
        end function delay_output

        ! int delch(void)
        function delch() bind(c, name='delch')
            import :: c_int
            implicit none
            integer(c_int) :: delch
        end function delch

        ! void delscreen(SCREEN* sp)
        subroutine delscreen() bind(c, name='delscreen')
        end subroutine delscreen

        ! int delwin(WINDOW *win)
        function delwin(win) bind(c, name='delwin')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: delwin
        end function delwin

        ! WINDOW *derwin(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x)
        function derwin(orig, nlines, ncols, begin_y, begin_x) bind(c, name='derwin')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: orig
            integer(c_int), intent(in), value :: nlines
            integer(c_int), intent(in), value :: ncols
            integer(c_int), intent(in), value :: begin_y
            integer(c_int), intent(in), value :: begin_x
            type(c_ptr)                       :: derwin
        end function derwin

        ! int doupdate(void)
        function doupdate() bind(c, name='doupdate')
            import :: c_int
            implicit none
            integer(c_int) :: doupdate
        end function doupdate

        ! WINDOW *dupwin(WINDOW *win)
        function dupwin(win) bind(c, name='dupwin')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            type(c_ptr)                    :: dupwin
        end function dupwin

        ! int echo(void)
        function echo() bind(c, name='echo')
            import :: c_int
            implicit none
            integer(c_int) :: echo
        end function echo

        ! int echochar(const chtype ch)
        function echochar(ch) bind(c, name='echochar')
            import :: c_int, chtype
            implicit none
            integer(chtype), intent(in), value :: ch
            integer(c_int)                     :: echochar
        end function echochar

        ! int endwin(void)
        function endwin() bind(c, name='endwin')
            import :: c_int
            implicit none
            integer(c_int) :: endwin
        end function endwin

        ! int erase(void)
        function erase() bind(c, name='erase')
            import :: c_int
            implicit none
            integer(c_int) :: erase
        end function erase

        ! void filter(void)
        subroutine filter() bind(c, name='filter')
        end subroutine filter

        ! int flash(void)
        function flash() bind(c, name='flash')
            import :: c_int
            implicit none
            integer(c_int) :: flash
        end function flash

        ! int flushinp(void)
        function flushinp() bind(c, name='flushinp')
            import :: c_int
            implicit none
            integer(c_int) :: flushinp
        end function flushinp

        ! chtype getbkgd(WINDOW *win)
        function getbkgd(win) bind(c, name='getbkgd')
            import :: c_ptr, chtype
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(chtype)                :: getbkgd
        end function getbkgd

        ! int getch(void)
        function getch() bind(c, name='getch')
            import :: c_int
            implicit none
            integer(c_int) :: getch
        end function getch

        ! int getmouse(MEVENT *event)
        function getmouse(event) bind(c, name='getmouse')
            import :: c_int, mevent
            implicit none
            type(mevent), intent(out) :: event
            integer(c_int)            :: getmouse
        end function getmouse

        ! int getnstr(char *str, int n)
        function getnstr(str, n) bind(c, name='getnstr')
            import :: c_char, c_int
            implicit none
            character(c_char), intent(inout)     :: str
            integer(c_int),    intent(in), value :: n
            integer(c_int)                       :: getnstr
        end function getnstr

        ! int getstr(char *str)
        function getstr(str) bind(c, name='getstr')
            import :: c_char, c_int
            implicit none
            character(c_char), intent(inout) :: str
            integer(c_int)                   :: getstr
        end function getstr

        ! WINDOW *getwin(FILE *filep)
        function getwin(filep) bind(c, name='getwin')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: filep
            type(c_ptr)                    :: getwin
        end function getwin

        ! int halfdelay(int tenths)
        function halfdelay(tenths) bind(c, name='halfdelay')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: tenths
            integer(c_int)                    :: halfdelay
        end function halfdelay

        ! bool has_colors(void)
        function has_colors() bind(c, name='has_colors')
            import :: c_bool
            implicit none
            logical(c_bool) :: has_colors
        end function has_colors

        ! int has_key(int ch)
        function has_key(ch) bind(c, name='has_key')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: ch
            integer(c_int)                    :: has_key
        end function has_key

        ! bool has_mouse(void)
        function has_mouse() bind(c, name='has_mouse')
            import :: c_bool
            implicit none
            logical(c_bool) :: has_mouse
        end function has_mouse

        ! int hline(chtype ch, int n)
        function hline(ch, n) bind(c, name='hline')
            import :: c_int, chtype
            implicit none
            integer(chtype), intent(in), value :: ch
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: hline
        end function hline

        ! void idcok(WINDOW *win, bool bf)
        subroutine idcok(win, bf) bind(c, name='idcok')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            logical(c_bool), intent(in), value :: bf
        end subroutine idcok

        ! int idlok(WINDOW *win, bool bf)
        function idlok(win, bf) bind(c, name='idlok')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            logical(c_bool), intent(in), value :: bf
            integer(c_int)                     :: idlok
        end function idlok

        ! void immedok(WINDOW *win, bool bf)
        subroutine immedok(win, bf) bind(c, name='immedok')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            logical(c_bool), intent(in), value :: bf
        end subroutine immedok

        ! int inchnstr(chtype *chstr, int n)
        function inchnstr(chstr, n) bind(c, name='inchnstr')
            import :: c_int, chtype
            implicit none
            integer(chtype), intent(out)       :: chstr(*)
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: inchnstr
        end function inchnstr

        ! int init_color(short color, short r, short g, short b)
        function init_color(color, r, g, b) bind(c, name='init_color')
            import :: c_int, c_short
            implicit none
            integer(c_short), intent(in), value :: color
            integer(c_short), intent(in), value :: r
            integer(c_short), intent(in), value :: g
            integer(c_short), intent(in), value :: b
            integer(c_int)                      :: init_color
        end function init_color

        ! int init_pair(short pair, short f, short b)
        function init_pair(pair, f, b) bind(c, name='init_pair')
            import :: c_int, c_short
            implicit none
            integer(c_short), intent(in), value :: pair
            integer(c_short), intent(in), value :: f
            integer(c_short), intent(in), value :: b
            integer(c_int)                      :: init_pair
        end function init_pair

        ! WINDOW *initscr(void)
        function initscr() bind(c, name='initscr')
            import :: c_ptr
            implicit none
            type(c_ptr) :: initscr
        end function initscr

        ! int intrflush(WINDOW *win, bool bf)
        function intrflush(win, bf) bind(c, name='intrflush')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            logical(c_bool), intent(in), value :: bf
            integer(c_int)                     :: intrflush
        end function intrflush

        ! bool is_linetouched(WINDOW *win, int line)
        function is_linetouched(win, line) bind(c, name='is_linetouched')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: line
            logical(c_bool)                   :: is_linetouched
        end function is_linetouched

        ! bool is_wintouched(WINDOW *win)
        function is_wintouched(win) bind(c, name='is_wintouched')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            logical(c_bool)                :: is_wintouched
        end function is_wintouched

        ! bool isendwin(void)
        function isendwin() bind(c, name='isendwin')
            import :: c_bool
            implicit none
            logical(c_bool) :: isendwin
        end function isendwin

        ! char *keyname(int c)
        function keyname_(c) bind(c, name='keyname')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: c
            type(c_ptr)                       :: keyname_
        end function keyname_

        ! int keypad(WINDOW *win, bool bf)
        function keypad(win, bf) bind(c, name='keypad')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            logical(c_bool), intent(in), value :: bf
            integer(c_int)                     :: keypad
        end function keypad

        ! int leaveok(WINDOW *win, bool bf)
        function leaveok(win, bf) bind(c, name='leaveok')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            logical(c_bool), intent(in), value :: bf
            integer(c_int)                     :: leaveok
        end function leaveok

        ! int meta(WINDOW *win, bool bf)
        function meta(win, bf) bind(c, name='meta')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            logical(c_bool), intent(in), value :: bf
            integer(c_int)                     :: meta
        end function meta

        ! bool mouse_trafo(int* py, int* px, bool to_screen)
        function mouse_trafo(to_screen) bind(c, name='mouse_trafo')
            import :: c_bool
            implicit none
            logical(c_bool), intent(in), value :: to_screen
            logical(c_bool)                    :: mouse_trafo
        end function mouse_trafo

        ! int mouseinterval(int erval)
        function mouseinterval(erval) bind(c, name='mouseinterval')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: erval
            integer(c_int)                    :: mouseinterval
        end function mouseinterval

        ! mmask_t mousemask(mmask_t newmask, mmask_t *oldmask)
        function mousemask(newmask, oldmask) bind(c, name='mousemask')
            import :: mmask_t
            implicit none
            integer(mmask_t), intent(in), value :: newmask
            integer(mmask_t), intent(out)       :: oldmask
            integer(mmask_t)                    :: mousemask
        end function mousemask

        ! int move(int y, int x)
        function move(y, x) bind(c, name='move')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: y
            integer(c_int), intent(in), value :: x
            integer(c_int)                    :: move
        end function move

        ! int mvaddch(int y, int x, const chtype ch)
        function mvaddch(y, x, ch) bind(c, name='mvaddch')
            import :: c_int, chtype
            implicit none
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(chtype), intent(in), value :: ch
            integer(c_int)                     :: mvaddch
        end function mvaddch

        ! int mvaddchnstr(int y, int x, const chtype *chstr, int n)
        function mvaddchnstr(y, x, chstr, n) bind(c, name='mvaddchnstr')
            import :: c_int, chtype
            implicit none
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(chtype), intent(in)        :: chstr(*)
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: mvaddchnstr
        end function mvaddchnstr

        ! int mvaddchstr(int y, int x, const chtype *chstr)
        function mvaddchstr(y, x, chstr) bind(c, name='mvaddchstr')
            import :: c_int, chtype
            implicit none
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(chtype), intent(in)        :: chstr(*)
            integer(c_int)                     :: mvaddchstr
        end function mvaddchstr

        ! int mvaddnstr(int y, int x, const char *str, int n)
        function mvaddnstr(y, x, str, n) bind(c, name='mvaddnstr')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: y
            integer(c_int),    intent(in), value :: x
            character(c_char), intent(in)        :: str
            integer(c_int),    intent(in), value :: n
            integer(c_int)                       :: mvaddnstr
        end function mvaddnstr

        ! int mvaddstr(int y, int x, const char *str)
        function mvaddstr(y, x, str) bind(c, name='mvaddstr')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: y
            integer(c_int),    intent(in), value :: x
            character(c_char), intent(in)        :: str
            integer(c_int)                       :: mvaddstr
        end function mvaddstr

        ! int mvchgat(int y, int x, int n, attr_t attr, short color, const void *opts)
        function mvchgat(y, x, n, attr, color, opts) bind(c, name='mvchgat')
            import :: attr_t, c_int, c_ptr, c_short
            implicit none
            integer(c_int),   intent(in), value :: y
            integer(c_int),   intent(in), value :: x
            integer(c_int),   intent(in), value :: n
            integer(attr_t),  intent(in), value :: attr
            integer(c_short), intent(in), value :: color
            type(c_ptr),      intent(in), value :: opts
            integer(c_int)                      :: mvchgat
        end function mvchgat

        ! int mvdelch(int y, int x)
        function mvdelch(y, x) bind(c, name='mvdelch')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: y
            integer(c_int), intent(in), value :: x
            integer(c_int)                    :: mvdelch
        end function mvdelch

        ! int mvderwin(WINDOW *win, int par_y, int par_x)
        function mvderwin(win, par_y, par_x) bind(c, name='mvderwin')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: par_y
            integer(c_int), intent(in), value :: par_x
            integer(c_int)                    :: mvderwin
        end function mvderwin

        ! int mvgetch(int y, int x)
        function mvgetch(y, x) bind(c, name='mvgetch')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: y
            integer(c_int), intent(in), value :: x
            integer(c_int)                    :: mvgetch
        end function mvgetch

        ! int mvgetnstr(int y, int x, char *str, int n)
        function mvgetnstr(y, x, str, n) bind(c, name='mvgetnstr')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: y
            integer(c_int),    intent(in), value :: x
            character(c_char), intent(inout)     :: str
            integer(c_int),    intent(in), value :: n
            integer(c_int)                       :: mvgetnstr
        end function mvgetnstr

        ! int mvgetstr(int y, int x, char *str)
        function mvgetstr(y, x, str) bind(c, name='mvgetstr')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: y
            integer(c_int),    intent(in), value :: x
            character(c_char), intent(inout)     :: str
            integer(c_int)                       :: mvgetstr
        end function mvgetstr

        ! int mvhline(int y, int x, chtype ch, int n)
        function mvhline(y, x, ch, n) bind(c, name='mvhline')
            import :: c_int, chtype
            implicit none
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(chtype), intent(in), value :: ch
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: mvhline
        end function mvhline

        ! int mvinchnstr(int y, int x, chtype *chstr, int n)
        function mvinchnstr(y, x, chstr, n) bind(c, name='mvinchnstr')
            import :: c_int, chtype
            implicit none
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(chtype), intent(out)       :: chstr(*)
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: mvinchnstr
        end function mvinchnstr

        ! int mvvline(int y, int x, chtype ch, int n)
        function mvvline(y, x, ch, n) bind(c, name='mvvline')
            import :: c_int, chtype
            implicit none
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(chtype), intent(in), value :: ch
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: mvvline
        end function mvvline

        ! int mvwaddch(WINDOW *win, int y, int x, const chtype ch)
        function mvwaddch(win, y, x, ch) bind(c, name='mvwaddch')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(chtype), intent(in), value :: ch
            integer(c_int)                     :: mvwaddch
        end function mvwaddch

        ! int mvwaddchnstr(WINDOW *win, int y, int x, const chtype *chstr, int n)
        function mvwaddchnstr(win, y, x, chstr, n) bind(c, name='mvwaddchnstr')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(chtype), intent(in)        :: chstr(*)
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: mvwaddchnstr
        end function mvwaddchnstr

        ! int mvwaddchstr(WINDOW *win, int y, int x, const chtype *chstr)
        function mvwaddchstr(win, y, x, chstr) bind(c, name='mvwaddchstr')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(chtype), intent(in)        :: chstr(*)
            integer(c_int)                     :: mvwaddchstr
        end function mvwaddchstr

        ! int mvwaddnstr(WINDOW *win, int y, int x, const char *str, int n)
        function mvwaddnstr(win, y, x, str, n) bind(c, name='mvwaddnstr')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: win
            integer(c_int),    intent(in), value :: y
            integer(c_int),    intent(in), value :: x
            character(c_char), intent(in)        :: str
            integer(c_int),    intent(in), value :: n
            integer(c_int)                       :: mvwaddnstr
        end function mvwaddnstr

        ! int mvwaddstr(WINDOW *win, int y, int x, const char *str)
        function mvwaddstr(win, y, x, str) bind(c, name='mvwaddstr')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: win
            integer(c_int),    intent(in), value :: y
            integer(c_int),    intent(in), value :: x
            character(c_char), intent(in)        :: str
            integer(c_int)                       :: mvwaddstr
        end function mvwaddstr

        ! int mvwchgat(WINDOW *win, int y, int x, int n, attr_t attr, short color, const void *opts)
        function mvwchgat(win, y, x, n, attr, color, opts) bind(c, name='mvwchgat')
            import :: attr_t, c_int, c_ptr, c_short
            implicit none
            type(c_ptr),      intent(in), value :: win
            integer(c_int),   intent(in), value :: y
            integer(c_int),   intent(in), value :: x
            integer(c_int),   intent(in), value :: n
            integer(attr_t),  intent(in), value :: attr
            integer(c_short), intent(in), value :: color
            type(c_ptr),      intent(in), value :: opts
            integer(c_int)                      :: mvwchgat
        end function mvwchgat

        ! int mvwdelch(WINDOW *win, int y, int x)
        function mvwdelch(win, y, x) bind(c, name='mvwdelch')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: y
            integer(c_int), intent(in), value :: x
            integer(c_int)                    :: mvwdelch
        end function mvwdelch

        ! int mvwgetch(WINDOW *win, int y, int x)
        function mvwgetch(win, y, x) bind(c, name='mvwgetch')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: y
            integer(c_int), intent(in), value :: x
            integer(c_int)                    :: mvwgetch
        end function mvwgetch

        ! int mvwgetnstr(WINDOW *, int y, int x, char *str, int n)
        function mvwgetnstr(y, x, str, n) bind(c, name='mvwgetnstr')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: y
            integer(c_int),    intent(in), value :: x
            character(c_char), intent(inout)     :: str
            integer(c_int),    intent(in), value :: n
            integer(c_int)                       :: mvwgetnstr
        end function mvwgetnstr

        ! int mvwgetstr(WINDOW *win, int y, int x, char *str)
        function mvwgetstr(win, y, x, str) bind(c, name='mvwgetstr')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: win
            integer(c_int),    intent(in), value :: y
            integer(c_int),    intent(in), value :: x
            character(c_char), intent(inout)     :: str
            integer(c_int)                       :: mvwgetstr
        end function mvwgetstr

        ! int mvwhline(WINDOW *, int y, int x, chtype ch, int n)
        function mvwhline(y, x, ch, n) bind(c, name='mvwhline')
            import :: c_int, chtype
            implicit none
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(chtype), intent(in), value :: ch
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: mvwhline
        end function mvwhline

        ! int mvwin(WINDOW *win, int y, int x)
        function mvwin(win, y, x) bind(c, name='mvwin')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: y
            integer(c_int), intent(in), value :: x
            integer(c_int)                    :: mvwin
        end function mvwin

        ! int mvwinchnstr(WINDOW *win, int y, int x, chtype *chstr, int n)
        function mvwinchnstr(win, y, x, chstr, n) bind(c, name='mvwinchnstr')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(chtype), intent(out)       :: chstr(*)
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: mvwinchnstr
        end function mvwinchnstr

        ! int mvwvline(WINDOW *, int y, int x, chtype ch, int n)
        function mvwvline(y, x, ch, n) bind(c, name='mvwvline')
            import :: c_int, chtype
            implicit none
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(chtype), intent(in), value :: ch
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: mvwvline
        end function mvwvline

        ! int napms(int ms)
        function napms(ms) bind(c, name='napms')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: ms
            integer(c_int)                    :: napms
        end function napms

        ! WINDOW *newpad(int nlines, int ncols)
        function newpad(nlines, ncols) bind(c, name='newpad')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: nlines
            integer(c_int), intent(in), value :: ncols
            type(c_ptr)                       :: newpad
        end function newpad

        ! SCREEN *newterm(char *type, FILE *outfd, FILE *infd)
        function newterm(type, outfd, infd) bind(c, name='newterm')
            import :: c_char, c_ptr
            implicit none
            character(c_char), intent(in)        :: type
            type(c_ptr),       intent(in), value :: outfd
            type(c_ptr),       intent(in), value :: infd
            type(c_ptr)                          :: newterm
        end function newterm

        ! WINDOW *newwin(int nlines, int ncols, int begin_y, int begin_x)
        function newwin(nlines, ncols, begin_y, begin_x) bind(c, name='newwin')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: nlines
            integer(c_int), intent(in), value :: ncols
            integer(c_int), intent(in), value :: begin_y
            integer(c_int), intent(in), value :: begin_x
            type(c_ptr)                       :: newwin
        end function newwin

        ! int nl(void)
        function nl() bind(c, name='nl')
            import :: c_int
            implicit none
            integer(c_int) :: nl
        end function nl

        ! int nocbreak(void)
        function nocbreak() bind(c, name='nocbreak')
            import :: c_int
            implicit none
            integer(c_int) :: nocbreak
        end function nocbreak

        ! int nodelay(WINDOW *win, bool bf)
        function nodelay(win, bf) bind(c, name='nodelay')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            logical(c_bool), intent(in), value :: bf
            integer(c_int)                     :: nodelay
        end function nodelay

        ! int noecho(void)
        function noecho() bind(c, name='noecho')
            import :: c_int
            implicit none
            integer(c_int) :: noecho
        end function noecho

        ! void nofilter(void)
        subroutine nofilter() bind(c, name='nofilter')
        end subroutine nofilter

        ! int nonl(void)
        function nonl() bind(c, name='nonl')
            import :: c_int
            implicit none
            integer(c_int) :: nonl
        end function nonl

        ! void noqiflush(void)
        subroutine noqiflush() bind(c, name='noqiflush')
        end subroutine noqiflush

        ! int noraw(void)
        function noraw() bind(c, name='noraw')
            import :: c_int
            implicit none
            integer(c_int) :: noraw
        end function noraw

        ! int notimeout(WINDOW *win, bool bf)
        function notimeout(win, bf) bind(c, name='notimeout')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            logical(c_bool), intent(in), value :: bf
            integer(c_int)                     :: notimeout
        end function notimeout

        ! int overlay(const WINDOW *srcwin, WINDOW *dstwin)
        function overlay(srcwin, dstwin) bind(c, name='overlay')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: srcwin
            type(c_ptr), intent(in), value :: dstwin
            integer(c_int)                 :: overlay
        end function overlay

        ! int overwrite(const WINDOW *srcwin, WINDOW *dstwin)
        function overwrite(srcwin, dstwin) bind(c, name='overwrite')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: srcwin
            type(c_ptr), intent(in), value :: dstwin
            integer(c_int)                 :: overwrite
        end function overwrite

        ! int pair_content(short pair, short *f, short *b)
        function pair_content(pair, f, b) bind(c, name='pair_content')
            import :: c_int, c_short
            implicit none
            integer(c_short), intent(in), value :: pair
            integer(c_short), intent(out)       :: f
            integer(c_short), intent(out)       :: b
            integer(c_int)                      :: pair_content
        end function pair_content

        ! int pechochar(WINDOW *pad, chtype ch)
        function pechochar(pad, ch) bind(c, name='pechochar')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: pad
            integer(chtype), intent(in), value :: ch
            integer(c_int)                     :: pechochar
        end function pechochar

        ! int pnoutrefresh(WINDOW *pad, int pminrow, int pmincol, int sminrow, int smincol, int smaxrow, int smaxcol)
        function pnoutrefresh(pad, pminrow, pmincol, sminrow, smincol, smaxrow, smaxcol) bind(c, name='pnoutrefresh')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: pad
            integer(c_int), intent(in), value :: pminrow
            integer(c_int), intent(in), value :: pmincol
            integer(c_int), intent(in), value :: sminrow
            integer(c_int), intent(in), value :: smincol
            integer(c_int), intent(in), value :: smaxrow
            integer(c_int), intent(in), value :: smaxcol
            integer(c_int)                    :: pnoutrefresh
        end function pnoutrefresh

        ! int prefresh(WINDOW *pad, int pminrow, int pmincol, int sminrow, int smincol, int smaxrow, int smaxcol)
        function prefresh(pad, pminrow, pmincol, sminrow, smincol, smaxrow, smaxcol) bind(c, name='prefresh')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: pad
            integer(c_int), intent(in), value :: pminrow
            integer(c_int), intent(in), value :: pmincol
            integer(c_int), intent(in), value :: sminrow
            integer(c_int), intent(in), value :: smincol
            integer(c_int), intent(in), value :: smaxrow
            integer(c_int), intent(in), value :: smaxcol
            integer(c_int)                    :: prefresh
        end function prefresh

        ! int putwin(WINDOW *win, FILE *filep)
        function putwin(win, filep) bind(c, name='putwin')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            type(c_ptr), intent(in), value :: filep
            integer(c_int)                 :: putwin
        end function putwin

        ! void qiflush(void)
        subroutine qiflush() bind(c, name='qiflush')
        end subroutine qiflush

        ! int raw(void)
        function raw() bind(c, name='raw')
            import :: c_int
            implicit none
            integer(c_int) :: raw
        end function raw

        ! int redrawwin(WINDOW *win)
        function redrawwin(win) bind(c, name='redrawwin')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: redrawwin
        end function redrawwin

        ! int refresh(void)
        function refresh() bind(c, name='refresh')
            import :: c_int
            implicit none
            integer(c_int) :: refresh
        end function refresh

        ! int reset_prog_mode(void)
        function reset_prog_mode() bind(c, name='reset_prog_mode')
            import :: c_int
            implicit none
            integer(c_int) :: reset_prog_mode
        end function reset_prog_mode

        ! int reset_shell_mode(void)
        function reset_shell_mode() bind(c, name='reset_shell_mode')
            import :: c_int
            implicit none
            integer(c_int) :: reset_shell_mode
        end function reset_shell_mode

        ! int resetty(void)
        function resetty() bind(c, name='resetty')
            import :: c_int
            implicit none
            integer(c_int) :: resetty
        end function resetty

        ! int savetty(void)
        function savetty() bind(c, name='savetty')
            import :: c_int
            implicit none
            integer(c_int) :: savetty
        end function savetty

        ! int scr_dump(const char *filename)
        function scr_dump(filename) bind(c, name='scr_dump')
            import :: c_char, c_int
            implicit none
            character(c_char), intent(in) :: filename
            integer(c_int)                :: scr_dump
        end function scr_dump

        ! int scr_init(const char *filename)
        function scr_init(filename) bind(c, name='scr_init')
            import :: c_char, c_int
            implicit none
            character(c_char), intent(in) :: filename
            integer(c_int)                :: scr_init
        end function scr_init

        ! int scrl(int n)
        function scrl(n) bind(c, name='scrl')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: n
            integer(c_int)                    :: scrl
        end function scrl

        ! int scroll(WINDOW *win)
        function scroll(win) bind(c, name='scroll')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: scroll
        end function scroll

        ! int scrollok(WINDOW *win, bool bf)
        function scrollok(win, bf) bind(c, name='scrollok')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            logical(c_bool), intent(in), value :: bf
            integer(c_int)                     :: scrollok
        end function scrollok

        ! SCREEN *set_term(SCREEN *new)
        function set_term(new) bind(c, name='set_term')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: new
            type(c_ptr)                    :: set_term
        end function set_term

        ! int setscrreg(int top, int bot)
        function setscrreg(top, bot) bind(c, name='setscrreg')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: top
            integer(c_int), intent(in), value :: bot
            integer(c_int)                    :: setscrreg
        end function setscrreg

        ! attr_t slk_attr(void)
        function slk_attr() bind(c, name='slk_attr')
            import :: attr_t
            implicit none
            integer(attr_t) :: slk_attr
        end function slk_attr

        ! int slk_attr_off(const attr_t attrs, void *opts)
        function slk_attr_off(attrs, opts) bind(c, name='slk_attr_off')
            import :: attr_t, c_int, c_ptr
            implicit none
            integer(attr_t), intent(in), value :: attrs
            type(c_ptr),     intent(in), value :: opts
            integer(c_int)                     :: slk_attr_off
        end function slk_attr_off

        ! int slk_attr_on(attr_t attrs, void *opts)
        function slk_attr_on(attrs, opts) bind(c, name='slk_attr_on')
            import :: attr_t, c_int, c_ptr
            implicit none
            integer(attr_t), intent(in), value :: attrs
            type(c_ptr),     intent(in), value :: opts
            integer(c_int)                     :: slk_attr_on
        end function slk_attr_on

        ! int slk_attr_set(const attr_t attrs, short color_pair_number, void *opts)
        function slk_attr_set(attrs, color_pair_number, opts) bind(c, name='slk_attr_set')
            import :: attr_t, c_int, c_ptr, c_short
            implicit none
            integer(attr_t),  intent(in), value :: attrs
            integer(c_short), intent(in), value :: color_pair_number
            type(c_ptr),      intent(in), value :: opts
            integer(c_int)                      :: slk_attr_set
        end function slk_attr_set

        ! int slk_attroff(const chtype attrs)
        function slk_attroff(attrs) bind(c, name='slk_attroff')
            import :: c_int, chtype
            implicit none
            integer(chtype), intent(in), value :: attrs
            integer(c_int)                     :: slk_attroff
        end function slk_attroff

        ! int slk_attron(const chtype attrs)
        function slk_attron(attrs) bind(c, name='slk_attron')
            import :: c_int, chtype
            implicit none
            integer(chtype), intent(in), value :: attrs
            integer(c_int)                     :: slk_attron
        end function slk_attron

        ! int slk_attrset(const chtype attrs)
        function slk_attrset(attrs) bind(c, name='slk_attrset')
            import :: c_int, chtype
            implicit none
            integer(chtype), intent(in), value :: attrs
            integer(c_int)                     :: slk_attrset
        end function slk_attrset

        ! int slk_clear(void)
        function slk_clear() bind(c, name='slk_clear')
            import :: c_int
            implicit none
            integer(c_int) :: slk_clear
        end function slk_clear

        ! int slk_color(short color_pair_number)
        function slk_color(color_pair_number) bind(c, name='slk_color')
            import :: c_int, c_short
            implicit none
            integer(c_short), intent(in), value :: color_pair_number
            integer(c_int)                      :: slk_color
        end function slk_color

        ! int slk_init(int fmt)
        function slk_init(fmt) bind(c, name='slk_init')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: fmt
            integer(c_int)                    :: slk_init
        end function slk_init

        ! char *slk_label(int labnum)
        function slk_label_(labnum) bind(c, name='slk_label')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: labnum
            type(c_ptr)                       :: slk_label_
        end function slk_label_

        ! int slk_noutrefresh(void)
        function slk_noutrefresh() bind(c, name='slk_noutrefresh')
            import :: c_int
            implicit none
            integer(c_int) :: slk_noutrefresh
        end function slk_noutrefresh

        ! int slk_refresh(void)
        function slk_refresh() bind(c, name='slk_refresh')
            import :: c_int
            implicit none
            integer(c_int) :: slk_refresh
        end function slk_refresh

        ! int slk_restore(void)
        function slk_restore() bind(c, name='slk_restore')
            import :: c_int
            implicit none
            integer(c_int) :: slk_restore
        end function slk_restore

        ! int slk_set(int labnum, const char *label, int fmt)
        function slk_set(labnum, label, fmt) bind(c, name='slk_set')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: labnum
            character(c_char), intent(in)        :: label
            integer(c_int),    intent(in), value :: fmt
            integer(c_int)                       :: slk_set
        end function slk_set

        ! int slk_touch(void)
        function slk_touch() bind(c, name='slk_touch')
            import :: c_int
            implicit none
            integer(c_int) :: slk_touch
        end function slk_touch

        ! int standend(void)
        function standend() bind(c, name='standend')
            import :: c_int
            implicit none
            integer(c_int) :: standend
        end function standend

        ! int standout(void)
        function standout() bind(c, name='standout')
            import :: c_int
            implicit none
            integer(c_int) :: standout
        end function standout

        ! int start_color(void)
        function start_color() bind(c, name='start_color')
            import :: c_int
            implicit none
            integer(c_int) :: start_color
        end function start_color

        ! WINDOW *subpad(WINDOW *parent, int nlines, int ncols, int begin_y, int begin_x)
        function subpad(parent, nlines, ncols, begin_y, begin_x) bind(c, name='subpad')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: parent
            integer(c_int), intent(in), value :: nlines
            integer(c_int), intent(in), value :: ncols
            integer(c_int), intent(in), value :: begin_y
            integer(c_int), intent(in), value :: begin_x
            type(c_ptr)                       :: subpad
        end function subpad

        ! WINDOW *subwin(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x)
        function subwin(orig, nlines, ncols, begin_y, begin_x) bind(c, name='subwin')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: orig
            integer(c_int), intent(in), value :: nlines
            integer(c_int), intent(in), value :: ncols
            integer(c_int), intent(in), value :: begin_y
            integer(c_int), intent(in), value :: begin_x
            type(c_ptr)                       :: subwin
        end function subwin

        ! int syncok(WINDOW *win, bool bf)
        function syncok(win, bf) bind(c, name='syncok')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            logical(c_bool), intent(in), value :: bf
            integer(c_int)                     :: syncok
        end function syncok

        ! void timeout(int delay)
        subroutine timeout(delay) bind(c, name='timeout')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: delay
        end subroutine timeout

        ! int touchline(WINDOW *win, int start, int count)
        function touchline(win, start, count) bind(c, name='touchline')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: start
            integer(c_int), intent(in), value :: count
            integer(c_int)                    :: touchline
        end function touchline

        ! int touchwin(WINDOW *win)
        function touchwin(win) bind(c, name='touchwin')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: touchwin
        end function touchwin

        ! int typeahead(int fd)
        function typeahead(fd) bind(c, name='typeahead')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: fd
            integer(c_int)                    :: typeahead
        end function typeahead

        ! char *unctrl(chtype c)
        function unctrl_(c) bind(c, name='unctrl')
            import :: c_ptr, chtype
            implicit none
            integer(chtype), intent(in), value :: c
            type(c_ptr)                        :: unctrl_
        end function unctrl_

        ! int ungetch(int ch)
        function ungetch(ch) bind(c, name='ungetch')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: ch
            integer(c_int)                    :: ungetch
        end function ungetch

        ! int ungetmouse(MEVENT *event)
        function ungetmouse(event) bind(c, name='ungetmouse')
            import :: c_int, mevent
            implicit none
            type(mevent), intent(out) :: event
            integer(c_int)            :: ungetmouse
        end function ungetmouse

        ! int untouchwin(WINDOW *win)
        function untouchwin(win) bind(c, name='untouchwin')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: untouchwin
        end function untouchwin

        ! void use_env(bool f)
        subroutine use_env(f) bind(c, name='use_env')
            import :: c_bool
            implicit none
            logical(c_bool), intent(in), value :: f
        end subroutine use_env

        ! int vline(chtype ch, int n)
        function vline(ch, n) bind(c, name='vline')
            import :: c_int, chtype
            implicit none
            integer(chtype), intent(in), value :: ch
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: vline
        end function vline

        ! int waddch(WINDOW *win, const chtype ch)
        function waddch(win, ch) bind(c, name='waddch')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(chtype), intent(in), value :: ch
            integer(c_int) :: waddch
        end function waddch

        ! int waddchnstr(WINDOW *win, const chtype *chstr, int n)
        function waddchnstr(win, chstr, n) bind(c, name='waddchnstr')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(chtype), intent(in)        :: chstr(*)
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: waddchnstr
        end function waddchnstr

        ! int waddchstr(WINDOW *win, const chtype *chstr)
        function waddchstr(win, chstr) bind(c, name='waddchstr')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(chtype), intent(in)        :: chstr(*)
            integer(c_int)                     :: waddchstr
        end function waddchstr

        ! int waddnstr(WINDOW *win, const char *str, int n)
        function waddnstr(win, str, n) bind(c, name='waddnstr')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr)      , intent(in), value :: win
            character(c_char), intent(in)        :: str
            integer(c_int),    intent(in), value :: n
            integer(c_int)                       :: waddnstr
        end function waddnstr

        ! int waddstr(WINDOW *win, const char *str)
        function waddstr(win, str) bind(c, name='waddstr')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: win
            character(c_char), intent(in)        :: str
            integer(c_int)                       :: waddstr
        end function waddstr

        ! int wattr_get(WINDOW *win, attr_t *attrs, short *pair, void *opts)
        function wattr_get(win, attrs, pair, opts) bind(c, name='wattr_get')
            import :: attr_t, c_int, c_ptr, c_short
            implicit none
            type(c_ptr),      intent(in), value :: win
            integer(c_int),   intent(out)       :: attrs
            integer(c_short), intent(out)       :: pair
            type(c_ptr),      intent(in), value :: opts
            integer(c_int)                      :: wattr_get
        end function wattr_get

        ! int wattr_off(WINDOW *win, attr_t attrs, void *opts)
        function wattr_off(win, attrs, opts) bind(c, name='wattr_off')
            import :: attr_t, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: attrs
            type(c_ptr),    intent(in), value :: opts
            integer(c_int)                    :: wattr_off
        end function wattr_off

        ! int wattr_on(WINDOW *win, attr_t attrs, void *opts)
        function wattr_on(win, attrs, opts) bind(c, name='wattr_on')
            import :: attr_t, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: attrs
            type(c_ptr),    intent(in), value :: opts
            integer(c_int)                    :: wattr_on
        end function wattr_on

        ! int wattr_set(WINDOW *win, attr_t attrs, short pair, void *opts)
        function wattr_set(win, attrs, pair, opts) bind(c, name='wattr_set')
            import :: attr_t, c_int, c_ptr, c_short
            implicit none
            type(c_ptr),      intent(in), value :: win
            integer(c_int),   intent(in), value :: attrs
            integer(c_short), intent(in), value :: pair
            type(c_ptr),      intent(in), value :: opts
            integer(c_int)                      :: wattr_set
        end function wattr_set

        ! int wattroff(WINDOW *win, int attrs)
        function wattroff(win, attrs) bind(c, name='wattroff')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: attrs
            integer(c_int)                    :: wattroff
        end function wattroff

        ! int wattron(WINDOW *win, int attrs)
        function wattron(win, attrs) bind(c, name='wattron')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: attrs
            integer(c_int)                    :: wattron
        end function wattron

        ! int wattrset(WINDOW *win, int attrs)
        function wattrset(win, attrs) bind(c, name='wattrset')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: attrs
            integer(c_int)                    :: wattrset
        end function wattrset

        ! int wbkgd(WINDOW *win, chtype ch)
        function wbkgd(win, ch) bind(c, name='wbkgd')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(chtype), intent(in), value :: ch
            integer(c_int)                     :: wbkgd
        end function wbkgd

        ! void wbkgdset(WINDOW *win, chtype ch)
        subroutine wbkgdset(win, ch) bind(c, name='wbkgdset')
            import :: c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(chtype), intent(in), value :: ch
        end subroutine wbkgdset

        ! int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts, chtype bs, chtype tl, chtype tr, chtype bl, chtype br)
        function wborder(win, ls, rs, ts, bs, tl, tr, bl, br) bind(c, name='wborder')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(chtype), intent(in), value :: ls
            integer(chtype), intent(in), value :: rs
            integer(chtype), intent(in), value :: ts
            integer(chtype), intent(in), value :: bs
            integer(chtype), intent(in), value :: tl
            integer(chtype), intent(in), value :: tr
            integer(chtype), intent(in), value :: bl
            integer(chtype), intent(in), value :: br
            integer(c_int)                     :: wborder
        end function wborder

        ! int wchgat(WINDOW *win, int n, attr_t attr, short color, const void *opts)
        function wchgat(win, n, attr, color, opts) bind(c, name='wchgat')
            import :: attr_t, c_int, c_ptr, c_short
            implicit none
            type(c_ptr),      intent(in), value :: win
            integer(c_int),   intent(in), value :: n
            integer(c_int),   intent(in), value :: attr
            integer(c_short), intent(in), value :: color
            type(c_ptr),      intent(in), value :: opts
            integer(c_int)                      :: wchgat
        end function wchgat

        ! int wclear(WINDOW *win)
        function wclear(win) bind(c, name='wclear')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: wclear
        end function wclear

        ! int wclrtobot(WINDOW *win)
        function wclrtobot(win) bind(c, name='wclrtobot')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: wclrtobot
        end function wclrtobot

        ! int wclrtoeol(WINDOW *win)
        function wclrtoeol(win) bind(c, name='wclrtoeol')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: wclrtoeol
        end function wclrtoeol

        ! int wcolor_set(WINDOW *win, short color_pair_number, void* opts)
        function wcolor_set(win, color_pair_number) bind(c, name='wcolor_set')
            import :: c_int, c_ptr, c_short
            implicit none
            type(c_ptr),      intent(in), value :: win
            integer(c_short), intent(in), value :: color_pair_number
            integer(c_int)                      :: wcolor_set
        end function wcolor_set

        ! void wcursyncup(WINDOW *win)
        subroutine wcursyncup(win) bind(c, name='wcursyncup')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
        end subroutine wcursyncup

        ! int wdelch(WINDOW *win)
        function wdelch(win) bind(c, name='wdelch')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: wdelch
        end function wdelch

        ! int wechochar(WINDOW *win, const chtype ch)
        function wechochar(win, ch) bind(c, name='wechochar')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(chtype), intent(in), value :: ch
            integer(c_int)                     :: wechochar
        end function wechochar

        ! bool wenclose(WINDOW *win, int y, int x)
        function wenclose(win, y, x) bind(c, name='wenclose')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: y
            integer(c_int), intent(in), value :: x
            logical(c_bool)                   :: wenclose
        end function wenclose

        ! int werase(WINDOW *win)
        function werase(win) bind(c, name='werase')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: werase
        end function werase

        ! int wgetch(WINDOW *win)
        function wgetch(win) bind(c, name='wgetch')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: wgetch
        end function wgetch

        ! int wgetnstr(WINDOW *win, char *str, int n)
        function wgetnstr(win, str, n) bind(c, name='wgetnstr')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: win
            character(c_char), intent(inout)     :: str
            integer(c_int),    intent(in), value :: n
            integer(c_int)                       :: wgetnstr
        end function wgetnstr

        ! int wgetstr(WINDOW *win, char *str)
        function wgetstr(win, str) bind(c, name='wgetstr')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: win
            character(c_char), intent(inout)     :: str
            integer(c_int)                       :: wgetstr
        end function wgetstr

        ! int whline(WINDOW *win, chtype ch, int n)
        function whline(win, ch, n) bind(c, name='whline')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(chtype), intent(in), value :: ch
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: whline
        end function whline

        ! int winchnstr(WINDOW *win, chtype *chstr, int n)
        function winchnstr(win, chstr, n) bind(c, name='winchnstr')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(chtype), intent(out)       :: chstr
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: winchnstr
        end function winchnstr

        ! bool wmouse_trafo(WINDOW* win, int* py, int* px, bool to_screen)
        function wmouse_trafo(to_screen) bind(c, name='wmouse_trafo')
            import :: c_bool
            implicit none
            logical(c_bool), intent(in), value :: to_screen
            logical(c_bool)                    :: wmouse_trafo
        end function wmouse_trafo

        ! int wmove(WINDOW *win, int y, int x)
        function wmove(win, y, x) bind(c, name='wmove')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: y
            integer(c_int), intent(in), value :: x
            integer(c_int)                    :: wmove
        end function wmove

        ! int wnoutrefresh(WINDOW *win)
        function wnoutrefresh(win) bind(c, name='wnoutrefresh')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: wnoutrefresh
        end function wnoutrefresh

        ! int wredrawln(WINDOW *win, int beg_line, int num_lines)
        function wredrawln(win, beg_line, num_lines) bind(c, name='wredrawln')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: beg_line
            integer(c_int), intent(in), value :: num_lines
            integer(c_int)                    :: wredrawln
        end function wredrawln

        ! int wrefresh(WINDOW *win)
        function wrefresh(win) bind(c, name='wrefresh')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: wrefresh
        end function wrefresh

        ! int wscroll(WINDOW *win, int n)
        function wscroll(win, n) bind(c, name='wscroll')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: n
            integer(c_int)                    :: wscroll
        end function wscroll

        ! int wsetscrreg(WINDOW *win, int top, int bot)
        function wsetscrreg(win, top, bot) bind(c, name='wsetscrreg')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: top
            integer(c_int), intent(in), value :: bot
            integer(c_int)                    :: wsetscrreg
        end function wsetscrreg

        ! int wstandend(WINDOW *win)
        function wstandend(win) bind(c, name='wstandend')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: wstandend
        end function wstandend

        ! int wstandout(WINDOW *win)
        function wstandout(win) bind(c, name='wstandout')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            integer(c_int)                 :: wstandout
        end function wstandout

        ! void wsyncdown(WINDOW *win)
        subroutine wsyncdown(win) bind(c, name='wsyncdown')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
        end subroutine wsyncdown

        ! void wsyncup(WINDOW *win)
        subroutine wsyncup(win) bind(c, name='wsyncup')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
        end subroutine wsyncup

        ! void wtimeout(WINDOW *win, int delay)
        subroutine wtimeout(win, delay) bind(c, name='wtimeout')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: delay
        end subroutine wtimeout

        ! int wtouchln(WINDOW *win, int y, int n, int changed)
        function wtouchln(win, y, n, changed) bind(c, name='wtouchln')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: y
            integer(c_int), intent(in), value :: n
            integer(c_int), intent(in), value :: changed
            integer(c_int)                    :: wtouchln
        end function wtouchln

        ! int wvline(WINDOW *win, chtype ch, int n)
        function wvline(win, ch, n) bind(c, name='wvline')
            import :: c_int, c_ptr, chtype
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(chtype), intent(in), value :: ch
            integer(c_int),  intent(in), value :: n
            integer(c_int)                     :: wvline
        end function wvline
    end interface

    ! Macro replacements.
    interface
        ! int color_pair(int n)
        function color_pair(n) bind(c, name='color_pair')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: n
            integer(c_int)                    :: color_pair
        end function color_pair

        ! int color_pairs(void)
        function color_pairs() bind(c, name='color_pairs')
            import :: c_int
            implicit none
            integer(c_int) :: color_pairs
        end function color_pairs

        ! int colors(void)
        function colors() bind(c, name='colors')
            import :: c_int
            implicit none
            integer(c_int) :: colors
        end function colors

        ! int cols(void)
        function cols() bind(c, name='cols')
            import :: c_int
            implicit none
            integer(c_int) :: cols
        end function cols

        ! void getbegyx(WINDOW *win, int y, int x)
        subroutine getbegyx(win, y, x) bind(c, name='getbegyx_')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(out)       :: y
            integer(c_int), intent(out)       :: x
        end subroutine getbegyx

        ! void getmaxyx_(WINDOW *win, int *y, int *x)
        subroutine getmaxyx(win, y, x) bind(c, name='getmaxyx_')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(out)       :: y
            integer(c_int), intent(out)       :: x
        end subroutine getmaxyx

        ! void getparyx(WINDOW *win, int y, int x)
        subroutine getparyx(win, y, x) bind(c, name='getparyx_')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(out)       :: y
            integer(c_int), intent(out)       :: x
        end subroutine getparyx

        ! void getsyx(int y, int x)
        subroutine getsyx(y, x) bind(c, name='getsyx_')
            import :: c_int
            implicit none
            integer(c_int), intent(out) :: y
            integer(c_int), intent(out) :: x
        end subroutine getsyx

        ! void getyx(WINDOW *win, int *y, int *x)
        subroutine getyx(win, y, x) bind(c, name='getyx_')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(out)       :: y
            integer(c_int), intent(out)       :: x
        end subroutine getyx

        ! int lines(void)
        function lines() bind(c, name='lines')
            import :: c_int
            implicit none
            integer(c_int) :: lines
        end function lines

        ! int pair_number(attr_t attrs)
        function pair_number(attrs) bind(c, name='pair_number')
            import :: attr_t, c_int
            implicit none
            integer(attr_t), intent(in), value :: attrs
            integer(c_int)                     :: pair_number
        end function pair_number

        ! void setsyx(int y, int x)
        subroutine setsyx(y, x) bind(c, name='setsyx_')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: y
            integer(c_int), intent(in), value :: x
        end subroutine setsyx
    end interface

    ! Variadic functions.
    interface mvprintw
        ! int mvprintw_char(int y, int x, const char *str)
        function mvprintw_char(y, x, str) bind(c, name='mvprintw_char')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: y
            integer(c_int),    intent(in), value :: x
            character(c_char), intent(in)        :: str
            integer(c_int)                       :: mvprintw_char
        end function mvprintw_char

        ! int mvprintw_int(int y, int x, int n)
        function mvprintw_int(y, x, n) bind(c, name='mvprintw_int')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: y
            integer(c_int), intent(in), value :: x
            integer(c_int), intent(in), value :: n
            integer(c_int)                    :: mvprintw_int
        end function mvprintw_int

        ! int mvprintw_long(int y, int x, long n)
        function mvprintw_long(y, x, n) bind(c, name='mvprintw_long')
            import :: c_int, c_long
            implicit none
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(c_long), intent(in), value :: n
            integer(c_int)                     :: mvprintw_long
        end function mvprintw_long
    end interface mvprintw

    interface mvwprintw
        ! int mvwprintw_char(WINDOW *win, int y, int x, const char *str)
        function mvwprintw_char(win, y, x, str) bind(c, name='mvwprintw_char')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: win
            integer(c_int),    intent(in), value :: y
            integer(c_int),    intent(in), value :: x
            character(c_char), intent(in)        :: str
            integer(c_int)                       :: mvwprintw_char
        end function mvwprintw_char

        ! int mvwprintw_int(WINDOW *win, int y, int x, int n)
        function mvwprintw_int(win, y, x, n) bind(c, name='mvwprintw_int')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: y
            integer(c_int), intent(in), value :: x
            integer(c_int), intent(in), value :: n
            integer(c_int)                    :: mvwprintw_int
        end function mvwprintw_int

        ! int mvwprintw_long(WINDOW *win, int y, int x, long n)
        function mvwprintw_long(win, y, x, n) bind(c, name='mvwprintw_long')
            import :: c_int, c_long, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(c_int),  intent(in), value :: y
            integer(c_int),  intent(in), value :: x
            integer(c_long), intent(in), value :: n
            integer(c_int)                     :: mvwprintw_long
        end function mvwprintw_long
    end interface mvwprintw

    interface printw
        ! int printw_char(const char *str)
        function printw_char(str) bind(c, name='printw_char')
            import :: c_char, c_int
            implicit none
            character(c_char), intent(in) :: str
            integer(c_int)                :: printw_char
        end function printw_char

        ! int printw_int(int n)
        function printw_int(n) bind(c, name='printw_int')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: n
            integer(c_int)                    :: printw_int
        end function printw_int

        ! int printw_long(long n)
        function printw_long(n) bind(c, name='printw_long')
            import :: c_int, c_long
            implicit none
            integer(c_long), intent(in), value :: n
            integer(c_int)                     :: printw_long
        end function printw_long
    end interface printw

    interface wprintw
        ! int wprintw_char(WINDOW *win, const char *str)
        function wprintw_char(win, str) bind(c, name='wprintw_char')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: win
            character(c_char), intent(in)        :: str
            integer(c_int)                       :: wprintw_char
        end function wprintw_char

        ! int wprintw_int(WINDOW *win, int n)
        function wprintw_int(win, n) bind(c, name='wprintw_int')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: win
            integer(c_int), intent(in), value :: n
            integer(c_int)                    :: wprintw_int
        end function wprintw_int

        ! int wprintw_long(WINDOW *win, long n)
        function wprintw_long(win, n) bind(c, name='wprintw_long')
            import :: c_int, c_long, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: win
            integer(c_long), intent(in), value :: n
            integer(c_int)                     :: wprintw_long
        end function wprintw_long
    end interface wprintw
contains
    function keyname(c) result(str)
        use :: ncurses_util
        integer(c_int), intent(in) :: c
        character(:), allocatable  :: str

        type(c_ptr) :: ptr

        ptr = keyname_(c)
        call c_f_str_ptr(ptr, str)
    end function keyname

    function slk_label(labnum) result(str)
        use :: ncurses_util
        integer, intent(in)       :: labnum
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = slk_label_(labnum)
        call c_f_str_ptr(ptr, str)
    end function slk_label

    function unctrl(c) result(str)
        use :: ncurses_util
        integer(chtype), intent(in) :: c
        character(:), allocatable   :: str

        type(c_ptr) :: ptr

        ptr = unctrl_(c)
        call c_f_str_ptr(ptr, str)
    end function unctrl
end module ncurses
