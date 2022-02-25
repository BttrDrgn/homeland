/*
 * --INFO--
 * Address:	800D3114
 * Size:	000010
 */
extern void (*__stdio_exit)(void);

extern void __close_all(void);

void __stdio_atexit(void) { __stdio_exit = __close_all; }
