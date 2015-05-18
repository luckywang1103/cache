#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <cstdint>
#include <new>
#include <sys/time.h>
#include <cmath>
#include <cstring>
#define kB 1024
#define MB kB*kB
#define GB MB*kB
#define sz 1*GB

using namespace std;

int pot(unsigned int x) {
	if(x == 1)
		return 0;
	else
		return (1 + pot(x/2));
}

void process(register unsigned int CopySize) {
	int *a,*backup_a,*b,*backup_b;
	double total;
	struct timeval t1, t2;
	int x;

	a = (int*)malloc(CopySize + 128);
	b = (int*)malloc(CopySize + 128);

	backup_a = a;
	backup_b = b;

    a = (int*) (((uintptr_t)a+128) & (~0x7F));
	b = (int*) (((uintptr_t)b+128) & (~0x7F));

    gettimeofday(&t1 , NULL);
	asm("#2nd for loop");
    for(register unsigned int i = 0 ; i < sz ; i+= CopySize) {
		asm("#3rd for loop");
		for(register unsigned int j = 0 ; j < (CopySize/4) ; j++) {
		    *(b+j) = *(a+j);
		}
		asm("#3rd for loop end");
    }
	asm("#2nd for loop end");

    gettimeofday(&t2 , NULL);

    total = t2.tv_sec - t1.tv_sec;
    total += (t2.tv_usec - t1.tv_usec)/1000000.0;
	x = pot(CopySize);
    cout << x << " - " << ((double) kB/total) << endl;

   	free(backup_a);
	free(backup_b);
}

int main(int argc, char *argv[])
{
    register unsigned int CopySize ;
    int y;

	if(argc == 2)
		CopySize = (unsigned) atoi(argv[1]);
	else
		CopySize = 4;

    for (y = 0 ; y < 1 ; y++) {
		asm("#CopySize");
		for (CopySize = 4 ; CopySize < sz ; CopySize = 2*CopySize) {
			process(CopySize);
		}
		cout << endl;
		asm("#CopySize++");
    }
    return 0;
}
