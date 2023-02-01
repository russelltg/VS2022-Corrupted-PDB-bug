#include "lib.h"

extern "C" __declspec(dllexport) A* foo() {
    auto ret = new A; 
    ret->a(1.0);
    ret->b(2.0);

    return ret;
}
