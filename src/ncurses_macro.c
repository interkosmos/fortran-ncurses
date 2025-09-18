/* Macro replacements for Fortran bindings. */
#include <ncurses.h>

#ifdef __cplusplus
extern "C" {
#endif

int color_pair(int);
int color_pairs(void);
int colors(void);
int cols(void);
int lines(void);
int mvprintw_char(int, int, const char *);
int mvprintw_int(int, int, int);
int mvprintw_long(int, int, long);
int mvwprintw_char(void *, int, int, const char *);
int mvwprintw_int(void *, int, int, int);
int mvwprintw_long(void *, int, int, long);
int pair_number(attr_t);
int printw_char(const char *);
int printw_int(int);
int printw_long(long);
int wprintw_char(void *, const char *);
int wprintw_int(void *, int);
int wprintw_long(void *, long);
void getbegyx_(void *, int *, int *);
void getmaxyx_(void *, int *, int *);
void getparyx_(void *, int *, int *);
void getsyx_(int *, int *);
void getyx_(void *, int *, int *);
void setsyx_(int, int);

int color_pair(int n) { return COLOR_PAIR(n); }
int color_pairs(void) { return COLOR_PAIRS;   }
int colors(void)      { return COLORS;        }
int cols(void)        { return COLS;          }
int lines(void)       { return LINES;         }

int mvprintw_char(int y, int x, const char *str) { return mvprintw(y, x, "%s", str); }
int mvprintw_int (int y, int x, int n)           { return mvprintw(y, x, "%d", n);   }
int mvprintw_long(int y, int x, long n)          { return mvprintw(y, x, "%ld", n);  }

int mvwprintw_char(void *win, int y, int x, const char *str) { return mvwprintw((WINDOW *) win, y, x, "%s", str); }
int mvwprintw_int (void *win, int y, int x, int n)           { return mvwprintw((WINDOW *) win, y, x, "%d", n);   }
int mvwprintw_long(void *win, int y, int x, long n)          { return mvwprintw((WINDOW *) win, y, x, "%ld", n);  }

int pair_number(attr_t attrs) { return PAIR_NUMBER(attrs); }

int printw_char(const char *str) { return printw("%s", str); }
int printw_int (int n)           { return printw("%d", n);   }
int printw_long(long n)          { return printw("%ld", n);  }

int wprintw_char(void *win, const char *str) { return wprintw((WINDOW *) win, "%s", str); }
int wprintw_int (void *win, int n)           { return wprintw((WINDOW *) win, "%d", n);   }
int wprintw_long(void *win, long n)          { return wprintw((WINDOW *) win, "%ld", n);  }

void getbegyx_(void *win, int *y, int *x) { getbegyx((WINDOW *) win, *y, *x); }
void getmaxyx_(void *win, int *y, int *x) { getmaxyx((WINDOW *) win, *y, *x); }
void getparyx_(void *win, int *y, int *x) { getparyx((WINDOW *) win, *y, *x); }
void getsyx_(int *y, int *x)              { getsyx(*y, *x);                   }
void getyx_(void *win, int *y, int *x)    { getyx((WINDOW *) win, *y, *x);    }
void setsyx_(int y, int x)                { setsyx(y, x);                     }

#ifdef __cplusplus
}
#endif
