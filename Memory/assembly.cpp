#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <cstdint>
#include <new>
#include <sys/time.h>
#include <cmath>
#include <cstring>
#include <pthread.h>
#define kB 1024
#define MB kB*kB
#define GB MB*kB
#define sz 1*GB

using namespace std;
double total;

void charcpy(char *dst , char const *src , size_t len) {
    char *dstC = dst;
    char const *srcC = src;
    while(len--) {
        *dstC++ = *srcC++;
    }
}

void intcpy(int *dst , int const *src , size_t len) {
    int *dstI= dst;
    int const *srcI = src;
    while(len >= 4) {
        *dstI++ = *srcI++;
        len -= 4;
    }
    char *dstC = (char *)dstI;
    char const *srcC =(char const *) srcI;
    while(len--) {
        *dstC++ = *srcC++;
    }
}

void dblcpy(double *dst , double const *src , size_t len) {
    double *dstD = dst;
    double const *srcD = src;
    asm("#while loop");
    while(len >= 8) {
        *dstD++ = *srcD++;
        len -= 8;
    }
    asm("#end while loop");

    int *dstI= (int *)dstD;
    int const *srcI = (int const *)srcD;
    while(len >= 4) {
        *dstI++ = *srcI++;
        len -= 4;
    }
    char *dstC = (char *)dstI;
    char const *srcC = (char const *)srcI;
    while(len--) {
        *dstC++ = *srcC++;
    }
}


void* process(void *argth) {
    char *a,*b,*backup_a,*backup_b;
    struct timeval t1, t2;
    long double CopySize = 2*kB;	//Best performance for dblcpy()
    
    a = (char*)malloc(CopySize + 16);
    b = (char*)malloc(CopySize + 16);
    backup_a = a;
    backup_b = b;

    a = (char*) (((uintptr_t)a+16) & (~0x0F));
    b = (char*) (((uintptr_t)b+16) & (~0x0F));

    gettimeofday(&t1 , NULL);
    asm("#for loop");
    for(long double i = 0 ; i < (sz) ; i+= CopySize) {
        dblcpy((double *)b , (double *)a , CopySize);
    }
    asm("#end for loop");

    gettimeofday(&t2 , NULL);

    total = t2.tv_sec - t1.tv_sec;
    total += (t2.tv_usec - t1.tv_usec)/1000000.0;

    free(backup_a);
    free(backup_b);
}

int main()
{
    FILE *pfile = fopen("assembly.txt" , "a+");
    double sum = 0;
    for(int x = 0 ; x < 5 ; x++) {
    	process(NULL);
	sum += (sz/(MB*total));
    }	
    sum = sum/5.0;
    fprintf(pfile , "%f\n" , sum);
    return 0;
}
