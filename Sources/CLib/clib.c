#include <stdio.h>
#include "clib.h"

void run_from_c(void) {
    #if UPPERCASE
    printf("THIS ONE FROM CLIB\n");
    #else
    printf("This one from Clib\n");
    #endif
}