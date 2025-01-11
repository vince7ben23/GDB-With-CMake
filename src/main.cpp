#include <iostream>
#include "utils/foo.hpp"

using namespace std;

int main()
{
    // int *a; //  causes segmentation fault
    int *a = new int;

    foo(a);
    printf("a is %d\n", *a);

    delete a;

    return 0;
}