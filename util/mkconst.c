/*
 * Utility program that creates a Fortran module of ncurses(3) parameters:
 *
 *    $ cc -o mkconst mkconst.c -lncurses
 *    $ ./mkconst path/to/ncurses_const.f90
 */
#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>

int main(int argc, char** argv)
{
    FILE *fp;

    if (argc != 2)
    {
        printf("usage: %s path\n", argv[0]);
        return -1;
    }

    fp = fopen(argv[1], "w");

    if (fp == NULL)
    {
        printf("Could not open file %s.\n", argv[1]);
        return -1;
    }

    initscr();

    fprintf(fp, "module ncurses_const\n");
    fprintf(fp, "    !! Auto-generated ncurses parameters. Do not modify.\n");
    fprintf(fp, "    use, intrinsic :: iso_c_binding\n");
    fprintf(fp, "    implicit none (type, external)\n");
    fprintf(fp, "    public\n\n");

    fprintf(fp, "    integer(c_long), parameter :: ACS_BLOCK    = int(z'%06x', c_long)\n", ACS_BLOCK);
    fprintf(fp, "    integer(c_long), parameter :: ACS_BOARD    = int(z'%06x', c_long)\n", ACS_BOARD);
    fprintf(fp, "    integer(c_long), parameter :: ACS_BTEE     = int(z'%06x', c_long)\n", ACS_BTEE);
    fprintf(fp, "    integer(c_long), parameter :: ACS_BULLET   = int(z'%06x', c_long)\n", ACS_BULLET);
    fprintf(fp, "    integer(c_long), parameter :: ACS_CKBOARD  = int(z'%06x', c_long)\n", ACS_CKBOARD);
    fprintf(fp, "    integer(c_long), parameter :: ACS_DARROW   = int(z'%06x', c_long)\n", ACS_DARROW);
    fprintf(fp, "    integer(c_long), parameter :: ACS_DEGREE   = int(z'%06x', c_long)\n", ACS_DEGREE);
    fprintf(fp, "    integer(c_long), parameter :: ACS_DIAMOND  = int(z'%06x', c_long)\n", ACS_DIAMOND);
    fprintf(fp, "    integer(c_long), parameter :: ACS_GEQUAL   = int(z'%06x', c_long)\n", ACS_GEQUAL);
    fprintf(fp, "    integer(c_long), parameter :: ACS_HLINE    = int(z'%06x', c_long)\n", ACS_HLINE);
    fprintf(fp, "    integer(c_long), parameter :: ACS_LANTERN  = int(z'%06x', c_long)\n", ACS_LANTERN);
    fprintf(fp, "    integer(c_long), parameter :: ACS_LARROW   = int(z'%06x', c_long)\n", ACS_LARROW);
    fprintf(fp, "    integer(c_long), parameter :: ACS_LEQUAL   = int(z'%06x', c_long)\n", ACS_LEQUAL);
    fprintf(fp, "    integer(c_long), parameter :: ACS_LLCORNER = int(z'%06x', c_long)\n", ACS_LLCORNER);
    fprintf(fp, "    integer(c_long), parameter :: ACS_LRCORNER = int(z'%06x', c_long)\n", ACS_LRCORNER);
    fprintf(fp, "    integer(c_long), parameter :: ACS_LTEE     = int(z'%06x', c_long)\n", ACS_LTEE);
    fprintf(fp, "    integer(c_long), parameter :: ACS_NEQUAL   = int(z'%06x', c_long)\n", ACS_NEQUAL);
    fprintf(fp, "    integer(c_long), parameter :: ACS_PI       = int(z'%06x', c_long)\n", ACS_PI);
    fprintf(fp, "    integer(c_long), parameter :: ACS_PLMINUS  = int(z'%06x', c_long)\n", ACS_PLMINUS);
    fprintf(fp, "    integer(c_long), parameter :: ACS_PLUS     = int(z'%06x', c_long)\n", ACS_PLUS);
    fprintf(fp, "    integer(c_long), parameter :: ACS_RARROW   = int(z'%06x', c_long)\n", ACS_RARROW);
    fprintf(fp, "    integer(c_long), parameter :: ACS_RTEE     = int(z'%06x', c_long)\n", ACS_RTEE);
    fprintf(fp, "    integer(c_long), parameter :: ACS_S1       = int(z'%06x', c_long)\n", ACS_S1);
    fprintf(fp, "    integer(c_long), parameter :: ACS_S3       = int(z'%06x', c_long)\n", ACS_S3);
    fprintf(fp, "    integer(c_long), parameter :: ACS_S7       = int(z'%06x', c_long)\n", ACS_S7);
    fprintf(fp, "    integer(c_long), parameter :: ACS_S9       = int(z'%06x', c_long)\n", ACS_S9);
    fprintf(fp, "    integer(c_long), parameter :: ACS_STERLING = int(z'%06x', c_long)\n", ACS_STERLING);
    fprintf(fp, "    integer(c_long), parameter :: ACS_TTEE     = int(z'%06x', c_long)\n", ACS_TTEE);
    fprintf(fp, "    integer(c_long), parameter :: ACS_UARROW   = int(z'%06x', c_long)\n", ACS_UARROW);
    fprintf(fp, "    integer(c_long), parameter :: ACS_ULCORNER = int(z'%06x', c_long)\n", ACS_ULCORNER);
    fprintf(fp, "    integer(c_long), parameter :: ACS_URCORNER = int(z'%06x', c_long)\n", ACS_URCORNER);
    fprintf(fp, "    integer(c_long), parameter :: ACS_VLINE    = int(z'%06x', c_long)\n", ACS_VLINE);
    fprintf(fp, "\n");

    fprintf(fp, "    integer(c_int), parameter :: A_NORMAL     = int(z'%08x')\n", A_NORMAL);
    fprintf(fp, "    integer(c_int), parameter :: A_ATTRIBUTES = int(z'%08x')\n", A_ATTRIBUTES);
    fprintf(fp, "    integer(c_int), parameter :: A_CHARTEXT   = int(z'%08x')\n", A_CHARTEXT);
    fprintf(fp, "    integer(c_int), parameter :: A_COLOR      = int(z'%08x')\n", A_COLOR);
    fprintf(fp, "    integer(c_int), parameter :: A_STANDOUT   = int(z'%08x')\n", A_STANDOUT);
    fprintf(fp, "    integer(c_int), parameter :: A_UNDERLINE  = int(z'%08x')\n", A_UNDERLINE);
    fprintf(fp, "    integer(c_int), parameter :: A_REVERSE    = int(z'%08x')\n", A_REVERSE);
    fprintf(fp, "    integer(c_int), parameter :: A_BLINK      = int(z'%08x')\n", A_BLINK);
    fprintf(fp, "    integer(c_int), parameter :: A_DIM        = int(z'%08x')\n", A_DIM);
    fprintf(fp, "    integer(c_int), parameter :: A_BOLD       = int(z'%08x')\n", A_BOLD);
    fprintf(fp, "    integer(c_int), parameter :: A_ALTCHARSET = int(z'%08x')\n", A_ALTCHARSET);
    fprintf(fp, "    integer(c_int), parameter :: A_INVIS      = int(z'%08x')\n", A_INVIS);
    fprintf(fp, "    integer(c_int), parameter :: A_PROTECT    = int(z'%08x')\n", A_PROTECT);
    fprintf(fp, "\n");

    fprintf(fp, "    integer(c_short), parameter :: COLOR_BLACK   = %d_c_short\n", COLOR_BLACK);
    fprintf(fp, "    integer(c_short), parameter :: COLOR_RED     = %d_c_short\n", COLOR_RED);
    fprintf(fp, "    integer(c_short), parameter :: COLOR_GREEN   = %d_c_short\n", COLOR_GREEN);
    fprintf(fp, "    integer(c_short), parameter :: COLOR_YELLOW  = %d_c_short\n", COLOR_YELLOW);
    fprintf(fp, "    integer(c_short), parameter :: COLOR_BLUE    = %d_c_short\n", COLOR_BLUE);
    fprintf(fp, "    integer(c_short), parameter :: COLOR_MAGENTA = %d_c_short\n", COLOR_MAGENTA);
    fprintf(fp, "    integer(c_short), parameter :: COLOR_CYAN    = %d_c_short\n", COLOR_CYAN);
    fprintf(fp, "    integer(c_short), parameter :: COLOR_WHITE   = %d_c_short\n", COLOR_WHITE);
    fprintf(fp, "\n");

    fprintf(fp, "    integer(c_int), parameter :: KEY_CODE_YES  = int(o'%o')\n", KEY_CODE_YES);
    fprintf(fp, "    integer(c_int), parameter :: KEY_MIN       = int(o'%o')\n", KEY_MIN);
    fprintf(fp, "    integer(c_int), parameter :: KEY_BREAK     = int(o'%o')\n", KEY_BREAK);
    fprintf(fp, "    integer(c_int), parameter :: KEY_DOWN      = int(o'%o')\n", KEY_DOWN);
    fprintf(fp, "    integer(c_int), parameter :: KEY_UP        = int(o'%o')\n", KEY_UP);
    fprintf(fp, "    integer(c_int), parameter :: KEY_LEFT      = int(o'%o')\n", KEY_LEFT);
    fprintf(fp, "    integer(c_int), parameter :: KEY_RIGHT     = int(o'%o')\n", KEY_RIGHT);
    fprintf(fp, "    integer(c_int), parameter :: KEY_HOME      = int(o'%o')\n", KEY_HOME);
    fprintf(fp, "    integer(c_int), parameter :: KEY_BACKSPACE = int(o'%o')\n", KEY_BACKSPACE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_F0        = int(o'%o')\n", KEY_F0);
    fprintf(fp, "\n");

    fprintf(fp, "    integer(c_int), parameter :: KEY_F(1:12) = [ &\n");
    fprintf(fp, "        int(o'%o'), &\n", KEY_F( 1));
    fprintf(fp, "        int(o'%o'), &\n", KEY_F( 2));
    fprintf(fp, "        int(o'%o'), &\n", KEY_F( 3));
    fprintf(fp, "        int(o'%o'), &\n", KEY_F( 4));
    fprintf(fp, "        int(o'%o'), &\n", KEY_F( 5));
    fprintf(fp, "        int(o'%o'), &\n", KEY_F( 6));
    fprintf(fp, "        int(o'%o'), &\n", KEY_F( 7));
    fprintf(fp, "        int(o'%o'), &\n", KEY_F( 8));
    fprintf(fp, "        int(o'%o'), &\n", KEY_F( 9));
    fprintf(fp, "        int(o'%o'), &\n", KEY_F(10));
    fprintf(fp, "        int(o'%o'), &\n", KEY_F(11));
    fprintf(fp, "        int(o'%o')  &\n", KEY_F(12));
    fprintf(fp, "    ]\n\n");

    fprintf(fp, "    integer(c_int), parameter :: KEY_DL        = int(o'%o')\n", KEY_DL);
    fprintf(fp, "    integer(c_int), parameter :: KEY_IL        = int(o'%o')\n", KEY_IL);
    fprintf(fp, "    integer(c_int), parameter :: KEY_DC        = int(o'%o')\n", KEY_DC);
    fprintf(fp, "    integer(c_int), parameter :: KEY_IC        = int(o'%o')\n", KEY_IC);
    fprintf(fp, "    integer(c_int), parameter :: KEY_EIC       = int(o'%o')\n", KEY_EIC);
    fprintf(fp, "    integer(c_int), parameter :: KEY_CLEAR     = int(o'%o')\n", KEY_CLEAR);
    fprintf(fp, "    integer(c_int), parameter :: KEY_EOS       = int(o'%o')\n", KEY_EOS);
    fprintf(fp, "    integer(c_int), parameter :: KEY_EOL       = int(o'%o')\n", KEY_EOL);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SF        = int(o'%o')\n", KEY_SF);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SR        = int(o'%o')\n", KEY_SR);
    fprintf(fp, "    integer(c_int), parameter :: KEY_NPAGE     = int(o'%o')\n", KEY_NPAGE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_PPAGE     = int(o'%o')\n", KEY_PPAGE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_STAB      = int(o'%o')\n", KEY_STAB);
    fprintf(fp, "    integer(c_int), parameter :: KEY_CTAB      = int(o'%o')\n", KEY_CTAB);
    fprintf(fp, "    integer(c_int), parameter :: KEY_CATAB     = int(o'%o')\n", KEY_CATAB);
    fprintf(fp, "    integer(c_int), parameter :: KEY_ENTER     = int(o'%o')\n", KEY_ENTER);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SRESET    = int(o'%o')\n", KEY_SRESET);
    fprintf(fp, "    integer(c_int), parameter :: KEY_RESET     = int(o'%o')\n", KEY_RESET);
    fprintf(fp, "    integer(c_int), parameter :: KEY_PRINT     = int(o'%o')\n", KEY_PRINT);
    fprintf(fp, "    integer(c_int), parameter :: KEY_LL        = int(o'%o')\n", KEY_LL);
    fprintf(fp, "    integer(c_int), parameter :: KEY_A1        = int(o'%o')\n", KEY_A1);
    fprintf(fp, "    integer(c_int), parameter :: KEY_A3        = int(o'%o')\n", KEY_A3);
    fprintf(fp, "    integer(c_int), parameter :: KEY_B2        = int(o'%o')\n", KEY_B2);
    fprintf(fp, "    integer(c_int), parameter :: KEY_C1        = int(o'%o')\n", KEY_C1);
    fprintf(fp, "    integer(c_int), parameter :: KEY_C3        = int(o'%o')\n", KEY_C3);
    fprintf(fp, "    integer(c_int), parameter :: KEY_BTAB      = int(o'%o')\n", KEY_BTAB);
    fprintf(fp, "    integer(c_int), parameter :: KEY_BEG       = int(o'%o')\n", KEY_BEG);
    fprintf(fp, "    integer(c_int), parameter :: KEY_CANCEL    = int(o'%o')\n", KEY_CANCEL);
    fprintf(fp, "    integer(c_int), parameter :: KEY_CLOSE     = int(o'%o')\n", KEY_CLOSE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_COMMAND   = int(o'%o')\n", KEY_COMMAND);
    fprintf(fp, "    integer(c_int), parameter :: KEY_COPY      = int(o'%o')\n", KEY_COPY);
    fprintf(fp, "    integer(c_int), parameter :: KEY_CREATE    = int(o'%o')\n", KEY_CREATE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_END       = int(o'%o')\n", KEY_END);
    fprintf(fp, "    integer(c_int), parameter :: KEY_EXIT      = int(o'%o')\n", KEY_EXIT);
    fprintf(fp, "    integer(c_int), parameter :: KEY_FIND      = int(o'%o')\n", KEY_FIND);
    fprintf(fp, "    integer(c_int), parameter :: KEY_HELP      = int(o'%o')\n", KEY_HELP);
    fprintf(fp, "    integer(c_int), parameter :: KEY_MARK      = int(o'%o')\n", KEY_MARK);
    fprintf(fp, "    integer(c_int), parameter :: KEY_MESSAGE   = int(o'%o')\n", KEY_MESSAGE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_MOVE      = int(o'%o')\n", KEY_MOVE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_NEXT      = int(o'%o')\n", KEY_NEXT);
    fprintf(fp, "    integer(c_int), parameter :: KEY_OPEN      = int(o'%o')\n", KEY_OPEN);
    fprintf(fp, "    integer(c_int), parameter :: KEY_OPTIONS   = int(o'%o')\n", KEY_OPTIONS);
    fprintf(fp, "    integer(c_int), parameter :: KEY_PREVIOUS  = int(o'%o')\n", KEY_PREVIOUS);
    fprintf(fp, "    integer(c_int), parameter :: KEY_REDO      = int(o'%o')\n", KEY_REDO);
    fprintf(fp, "    integer(c_int), parameter :: KEY_REFERENCE = int(o'%o')\n", KEY_REFERENCE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_REFRESH   = int(o'%o')\n", KEY_REFRESH);
    fprintf(fp, "    integer(c_int), parameter :: KEY_REPLACE   = int(o'%o')\n", KEY_REPLACE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_RESTART   = int(o'%o')\n", KEY_RESTART);
    fprintf(fp, "    integer(c_int), parameter :: KEY_RESUME    = int(o'%o')\n", KEY_RESUME);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SAVE      = int(o'%o')\n", KEY_SAVE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SBEG      = int(o'%o')\n", KEY_SBEG);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SCANCEL   = int(o'%o')\n", KEY_SCANCEL);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SCOMMAND  = int(o'%o')\n", KEY_SCOMMAND);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SCOPY     = int(o'%o')\n", KEY_SCOPY);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SCREATE   = int(o'%o')\n", KEY_SCREATE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SDC       = int(o'%o')\n", KEY_SDC);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SDL       = int(o'%o')\n", KEY_SDL);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SELECT    = int(o'%o')\n", KEY_SELECT);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SEND      = int(o'%o')\n", KEY_SEND);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SEOL      = int(o'%o')\n", KEY_SEOL);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SEXIT     = int(o'%o')\n", KEY_SEXIT);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SFIND     = int(o'%o')\n", KEY_SFIND);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SHELP     = int(o'%o')\n", KEY_SHELP);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SHOME     = int(o'%o')\n", KEY_SHOME);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SIC       = int(o'%o')\n", KEY_SIC);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SLEFT     = int(o'%o')\n", KEY_SLEFT);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SMESSAGE  = int(o'%o')\n", KEY_SMESSAGE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SMOVE     = int(o'%o')\n", KEY_SMOVE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SNEXT     = int(o'%o')\n", KEY_SNEXT);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SOPTIONS  = int(o'%o')\n", KEY_SOPTIONS);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SPREVIOUS = int(o'%o')\n", KEY_SPREVIOUS);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SPRINT    = int(o'%o')\n", KEY_SPRINT);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SREDO     = int(o'%o')\n", KEY_SREDO);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SREPLACE  = int(o'%o')\n", KEY_SREPLACE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SRIGHT    = int(o'%o')\n", KEY_SRIGHT);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SRSUME    = int(o'%o')\n", KEY_SRSUME);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SSAVE     = int(o'%o')\n", KEY_SSAVE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SSUSPEND  = int(o'%o')\n", KEY_SSUSPEND);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SUNDO     = int(o'%o')\n", KEY_SUNDO);
    fprintf(fp, "    integer(c_int), parameter :: KEY_SUSPEND   = int(o'%o')\n", KEY_SUSPEND);
    fprintf(fp, "    integer(c_int), parameter :: KEY_UNDO      = int(o'%o')\n", KEY_UNDO);
    fprintf(fp, "    integer(c_int), parameter :: KEY_MOUSE     = int(o'%o')\n", KEY_MOUSE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_RESIZE    = int(o'%o')\n", KEY_RESIZE);
    fprintf(fp, "    integer(c_int), parameter :: KEY_MAX       = int(o'%o')\n", KEY_MAX);
    fprintf(fp, "\n");

    fprintf(fp, "    integer(c_int), parameter :: ALL_MOUSE_EVENTS       = int(z'%07lx', c_int)\n", ALL_MOUSE_EVENTS);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON1_RELEASED       = int(z'%07lx', c_int)\n", BUTTON1_RELEASED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON1_PRESSED        = int(z'%07lx', c_int)\n", BUTTON1_PRESSED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON1_CLICKED        = int(z'%07lx', c_int)\n", BUTTON1_CLICKED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON1_DOUBLE_CLICKED = int(z'%07lx', c_int)\n", BUTTON1_DOUBLE_CLICKED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON1_TRIPLE_CLICKED = int(z'%07lx', c_int)\n", BUTTON1_TRIPLE_CLICKED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON2_RELEASED       = int(z'%07lx', c_int)\n", BUTTON2_RELEASED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON2_PRESSED        = int(z'%07lx', c_int)\n", BUTTON2_PRESSED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON2_CLICKED        = int(z'%07lx', c_int)\n", BUTTON2_CLICKED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON2_DOUBLE_CLICKED = int(z'%07lx', c_int)\n", BUTTON2_DOUBLE_CLICKED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON2_TRIPLE_CLICKED = int(z'%07lx', c_int)\n", BUTTON2_TRIPLE_CLICKED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON3_RELEASED       = int(z'%07lx', c_int)\n", BUTTON3_RELEASED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON3_PRESSED        = int(z'%07lx', c_int)\n", BUTTON3_PRESSED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON3_CLICKED        = int(z'%07lx', c_int)\n", BUTTON3_CLICKED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON3_DOUBLE_CLICKED = int(z'%07lx', c_int)\n", BUTTON3_DOUBLE_CLICKED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON3_TRIPLE_CLICKED = int(z'%07lx', c_int)\n", BUTTON3_TRIPLE_CLICKED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON4_RELEASED       = int(z'%07lx', c_int)\n", BUTTON4_RELEASED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON4_PRESSED        = int(z'%07lx', c_int)\n", BUTTON4_PRESSED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON4_CLICKED        = int(z'%07lx', c_int)\n", BUTTON4_CLICKED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON4_DOUBLE_CLICKED = int(z'%07lx', c_int)\n", BUTTON4_DOUBLE_CLICKED);
    fprintf(fp, "    integer(c_int), parameter :: BUTTON4_TRIPLE_CLICKED = int(z'%07lx', c_int)\n", BUTTON4_TRIPLE_CLICKED);

    fprintf(fp, "end module ncurses_const");

    endwin();
    fclose(fp);
}
