#include "types.h"

extern "C" {
bool OSRestoreInterrupts(unsigned int);
unsigned int OSDisableInterrupts();

/*
 * --INFO--
 * Address:	........
 * Size:	000004
 */
void MWTerminateCriticalSection(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800E2404
 * Size:	000024
 */
void MWExitCriticalSection(unsigned int* section) { OSRestoreInterrupts(*section); }

/*
 * --INFO--
 * Address:	800E2428
 * Size:	000030
 */
void MWEnterCriticalSection(unsigned int* section) { *section = OSDisableInterrupts(); }

/*
 * --INFO--
 * Address:	800E2458
 * Size:	000004
 */
void MWInitializeCriticalSection(void) { }
};
