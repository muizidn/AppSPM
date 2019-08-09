#include <iostream>
#include "cxxlib.h"

namespace cxxlib {
    void run_from_cxx(void) {
        #if UPPERCASE
        std::cout << "THIS ONE FROM CXXLIB" << std::endl;
        #else
        std::cout << "This one from CxxLib" << std::endl;
        #endif
    }
}