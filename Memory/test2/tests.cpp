#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <cstdint>
#include <new>
#include <sys/time.h>
#include <cmath>
#include <cstring>
#include <sys/mman.h>
#include <unistd.h>
#include <pthread.h>
#define kB 1024
#define MB kB*kB
#define GB MB*kB
#define SZ 1*GB

using namespace std;
volatile int lock , done;
unsigned int CopySize;
unsigned sz;
int threads;
struct timeval t1, t2,BARRIER;
int y;

int pot(unsigned int x) {
	if(x == 1)
		return 0;
	else
		return (1 + pot(x/2));
}

void *process(void *argth);

int main(int argc, char *argv[])
{
	double total;
	int x;
	gettimeofday(&BARRIER,NULL);
	BARRIER.tv_sec = BARRIER.tv_sec + 5;

	if(argc == 2)
		threads = atoi(argv[1]);
	else
		threads = 1;
		
	sz = SZ/threads;

    for (y = 0 ; y < 3 ; y++) {
		for (CopySize = 1*kB ; CopySize <= sz ; CopySize = 2*CopySize)
		{
			pthread_t tid;
			done = 1;
			for(x = 0 ; x < threads ; x++) {
				pthread_create(&tid , NULL , process , NULL);
			}
			gettimeofday(&t1 , NULL);
			while(t1.tv_sec < ( BARRIER.tv_sec + 3*( pot(CopySize) - 10 ) + 20*3*y )) {
				gettimeofday(&t1,NULL);
			}			
			done = 0;
			
			pthread_join(tid,NULL); 
			sleep(1);
			
			//cout << t2.tv_sec << " " << t2.tv_usec/1000000.0 << endl;
			//cout << t1.tv_sec << " " << t1.tv_usec/1000000.0 << endl;
			
			total = t2.tv_sec - t1.tv_sec;
    		total += (t2.tv_usec - t1.tv_usec)/1000000.0;
    					
			cout << CopySize/kB << "kB - " << (double) 2*SZ/(total*MB) << endl;
		}
		cout << endl;
    }
    return 0;
}

void *process(void *argth){
	double *a,*backup_a,*b,*backup_b;
	
	a = (double*)malloc(CopySize + 128);
	b = (double*)malloc(CopySize + 128);
	
	backup_a = a;
	backup_b = b;

   	a = (double*) (((uintptr_t)a+128) & (~0x7F));
	b = (double*) (((uintptr_t)b+128) & (~0x7F));
	
	for(unsigned i = 0 ; i < CopySize/8 ; i++) {
		*(a+i) = 5;
	}
	
	//cout << t1.tv_sec << endl;
	while(done);			
	//cout << t1.tv_sec << " " << t1.tv_usec/1000000.0 << endl;
	
	for(register unsigned int i = 0 ; i < sz ; i+= CopySize) {
		for(register unsigned int j = 0 ; j < (CopySize/8) ; j++) {
    		*(b+j) = *(a+j);
		}
 	}
 	gettimeofday(&t2 , NULL);
 	//cout << t2.tv_sec << " " << t2.tv_usec/1000000.0 << endl;
 	
 	if(*(b+(CopySize/8 - 1)) != 5 || *(b+1) != 5) cout << "problem copying\n";
 	
 	b = NULL;
 	a = NULL;
 	
 	free(backup_a);
	free(backup_b);
	return NULL;
}
