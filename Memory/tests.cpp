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
int lock;

void charcpy(char *dst , char const *src , size_t len) {
    char *dstC = dst;
    char const *srcC = src;
    while(len--) {
        *dstC++ = *srcC++;
    }
}

void intcpy(int *dst , int const *src , register size_t len) {
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

void dblcpy(double *dst , double const *src , register size_t len) {
    double *dstD = dst;
    double const *srcD = src;
    volatile register double reg;
	asm("#while");
    while(len >= 8) {
		asm("#reg = mem");
        reg = *srcD++;
        len -= 8;
    }
	asm("#end");

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
    register unsigned int CopySize ;
    FILE *pfile = NULL;
    int y = 0;
    while(pfile == NULL) {
	char name[15] = "";
	sprintf(name , "tests%d.txt" , y);	
	pfile = fopen(name , "r");
	if (pfile != NULL) {
	    pfile = NULL;
	    y++;
	}
	else 
	    pfile = fopen(name , "w");
    }
    for(int i = 0 ; i < 10 ; i++) {
    int x = 1;
    CopySize = 32*kB;
	asm("#for loop CopySize");
    //for(CopySize = 4 ; CopySize <= (1*kB*kB*kB) ; CopySize = 2*CopySize) {
	
        a = (char*)malloc(CopySize + 16);
        b = (char*)malloc(CopySize + 16);
        backup_a = a;
        backup_b = b;

        a = (char*) (((uintptr_t)a+16) & (~0x0F));
        b = (char*) (((uintptr_t)b+16) & (~0x0F));

        gettimeofday(&t1 , NULL);
		asm("#copy loop");
        for(register unsigned int i = 0 ; i < (1*kB*kB*kB) ; i+= CopySize) {
            //memcpy((void *)b , (void *)a , CopySize);
            //charcpy((char *)b , (char *)a , CopySize);
            //intcpy((int *)b , (int *)a , CopySize);
            dblcpy((double *)b , (double *)a , CopySize);
        }
		asm("#end copy loop");

        gettimeofday(&t2 , NULL);

        total = t2.tv_sec - t1.tv_sec;
        total += (t2.tv_usec - t1.tv_usec)/1000000.0;
		x++;
		fprintf(pfile , "%d - %f\n" , x , (kB/total));
        cout << x << " - " << ((double) kB/total) << endl;

    	free(backup_a);
    	free(backup_b);
    //}
	asm("#end CopySize++");
    }
    fclose(pfile);

}

int main()
{
    //pthread_t tid1 , tid2;
    total = 0;
    lock =0;

    process(NULL);
    
    return 0;
}
