! Author:  Philipp Engel
! Licence: ISC
module ncurses_panel
    !! Auto-generated Fortran 2018 interface bindings to the ncurses panel
    !! library. Link against `-lpanel`.
    use, intrinsic :: iso_c_binding
    implicit none (type, external)
    public

    interface
        ! int bottom_panel(PANEL *pan)
        function bottom_panel(pan) bind(c, name='bottom_panel')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: pan
            integer(c_int)                 :: bottom_panel
        end function bottom_panel

        ! int del_panel(PANEL *pan)
        function del_panel(pan) bind(c, name='del_panel')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: pan
            integer(c_int)                 :: del_panel
        end function del_panel

        ! int hide_panel(PANEL *pan)
        function hide_panel(pan) bind(c, name='hide_panel')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: pan
            integer(c_int)                 :: hide_panel
        end function hide_panel

        ! int move_panel(PANEL *pan, int starty, int startx)
        function move_panel(pan, starty, startx) bind(c, name='move_panel')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: pan
            integer(c_int), intent(in), value :: starty
            integer(c_int), intent(in), value :: startx
            integer(c_int)                    :: move_panel
        end function move_panel

        ! PANEL *new_panel(WINDOW *win)
        function new_panel(win) bind(c, name='new_panel')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: win
            type(c_ptr)                    :: new_panel
        end function new_panel

        ! PANEL *panel_above(const PANEL *pan)
        function panel_above(pan) bind(c, name='panel_above')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: pan
            type(c_ptr)                    :: panel_above
        end function panel_above

        ! PANEL *panel_below(const PANEL *pan)
        function panel_below(pan) bind(c, name='panel_below')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: pan
            type(c_ptr)                    :: panel_below
        end function panel_below

        ! int panel_hidden(const PANEL *pan)
        function panel_hidden(pan) bind(c, name='panel_hidden')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: pan
            integer(c_int)                 :: panel_hidden
        end function panel_hidden

        ! const void *panel_userptr(const PANEL *pan)
        function panel_userptr(pan) bind(c, name='panel_userptr')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: pan
            type(c_ptr)                    :: panel_userptr
        end function panel_userptr

        ! WINDOW *panel_window(const PANEL *pan)
        function panel_window(pan) bind(c, name='panel_window')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: pan
            type(c_ptr)                    :: panel_window
        end function panel_window

        ! int replace_panel(PANEL *pan, WINDOW *window)
        function replace_panel(pan, window) bind(c, name='replace_panel')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: pan
            type(c_ptr), intent(in), value :: window
            integer(c_int)                 :: replace_panel
        end function replace_panel

        ! int set_panel_userptr(PANEL *pan, const void *ptr)
        function set_panel_userptr(pan, ptr) bind(c, name='set_panel_userptr')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: pan
            type(c_ptr), intent(in), value :: ptr
            integer(c_int)                 :: set_panel_userptr
        end function set_panel_userptr

        ! int show_panel(PANEL *pan)
        function show_panel(pan) bind(c, name='show_panel')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: pan
            integer(c_int)                 :: show_panel
        end function show_panel

        ! int top_panel(PANEL *pan)
        function top_panel(pan) bind(c, name='top_panel')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: pan
            integer(c_int)                 :: top_panel
        end function top_panel

        ! void update_panels()
        subroutine update_panels() bind(c, name='update_panels')
        end subroutine update_panels
    end interface
end module ncurses_panel
