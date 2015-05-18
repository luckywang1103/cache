#include <iostream>
#include <new>
#include <ctime>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <cstring>
#define kB  1024
#define sz 100*kB*kB

using namespace std;

int main ()
{
    long double *a2 , *b2 ,*ptr;
    char *a , *b;

    a = new char[sz];
    b = new char[sz];

    for (int x = 0 ; x < sz; x++)
        a[x] =  x%50;

    asm("#a2 , b2 = a , b:");
    a2 = (long double*) a;
    b2 = (long double*) b;

    asm("#for loop:");
    for (int x = 0 ; x < sz/12; x++) {
        //b[x] = a[x];
        *b2++ = *a2++;
    }

    /*asm("#memcpy");
    memcpy((void *)b , (void *)a , sz*sizeof(char));*/

    //memcpy2((void *)b , (void *)a , sz*sizeof(char));
    asm("#deleting:");
    delete [] a;
    delete [] b;

    return 0;
}
