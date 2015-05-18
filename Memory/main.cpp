#include <iostream>
#include <new>
#include <sys/time.h>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <cstring>
#include <pthread.h>
#define kB  1024
#define sz 100*kB*kB

using namespace std;
double total;
int lock;
char *pth1 , *pth2 , *pth3 , *pth4 , *pth5 , *pth6 , *pth7 , *pth8;


void* process(void *argth) {
    double *a2 , *b2 ;
    struct timeval t1, t2;

    a2 = (double*) pth1;
    b2 = (double*) pth2;

    while(lock) printf("1\n");
    lock = 1;

    gettimeofday(&t1 , NULL);

    //for(int x = 0 ; x < sz/8 ; x++)
        //*b2++ = *a2++;

    memcpy((void*) pth2 , (void*) pth1 , sz*sizeof(char));

    gettimeofday(&t2 , NULL);



    total += t2.tv_sec - t1.tv_sec;
    total += (t2.tv_usec - t1.tv_usec)/1000000.0;

    lock = 0;


}

void* process2(void *argth) {
    double *a2 , *b2 ;
    struct timeval t1, t2;

    a2 = (double*) pth3;
    b2 = (double*) pth4;

    while(lock)printf("2\n");
    lock = 1;

    gettimeofday(&t1 , NULL);

    //for(int x = 0 ; x < sz/8 ; x++)
      //  *b2++ = *a2++;

    memcpy((void*) pth4 , (void*) pth3 , sz*sizeof(char));

    gettimeofday(&t2 , NULL);



    total += t2.tv_sec - t1.tv_sec;
    total += (t2.tv_usec - t1.tv_usec)/1000000.0;

    lock = 0;


}

void* process3(void *argth) {
    double *a2 , *b2 ;
    struct timeval t1, t2;

    a2 = (double*) pth5;
    b2 = (double*) pth6;

    gettimeofday(&t1 , NULL);

    for(int x = 0 ; x < sz/8 ; x++)
        *b2++ = *a2++;

    //memcpy((void*) pth6 , (void*) pth5 , sz*sizeof(char));

    gettimeofday(&t2 , NULL);

    while(lock);
    lock = 1;

    total += t2.tv_sec - t1.tv_sec;
    total += (t2.tv_usec - t1.tv_usec)/1000000.0;

    lock = 0;


}

void* process4(void *argth) {
    double *a2 , *b2 ;
    struct timeval t1, t2;

    a2 = (double*) pth7;
    b2 = (double*) pth8;

    gettimeofday(&t1 , NULL);

    for(int x = 0 ; x < sz/8 ; x++)
        *b2++ = *a2++;

    //memcpy((void*) pth7 , (void*) pth8 , sz*sizeof(char));

    gettimeofday(&t2 , NULL);

    while(lock);
    lock = 1;

    total += t2.tv_sec - t1.tv_sec;
    total += (t2.tv_usec - t1.tv_usec)/1000000.0;

    lock = 0;


}

int main ()
{
    clock_t tim;
    pthread_t pid1 , pid2 , pid3 , pid4;
    double *a2 , *b2 ,*ptr;
    char *a , *b;
    int y = 90;
    lock = 0;
    total = 0;
    struct timeval t1, t2;
    total = 0;

    pth1 = (char*)malloc(sz);
    pth2 = (char*)malloc(sz);
    pth3 = (char*)malloc(sz);
    pth4 = (char*)malloc(sz);
    //pth5 = new char[sz];
    //pth6 = new char[sz];
    //pth7 = new char[sz];
    //pth8 = new char[sz];

    for(int x = 0 ; x < sz ; x++) {
        pth1[x] = x%50;
        pth3[x] = x%50;
        //pth5[x] = x%50;
        //pth7[x] = x%50;
    }

    pthread_create(&pid1 , NULL , process , NULL);
    pthread_create(&pid2 , NULL , process2 , NULL);
    //pthread_create(&pid3 , NULL , process3 , NULL);
    //pthread_create(&pid4 , NULL , process4 , NULL);
    pthread_join(pid1 , NULL);
    pthread_join(pid2 , NULL);
    //pthread_join(pid3 , NULL);
    //pthread_join(pid4 , NULL);

    //cout << ((1.0*200.0)/(total*kB)) << endl;
    cout << 2*200.0/(total*kB) << endl;
    //printf("%d - %d - %d - %d\n",pth2[sz - 1] , 1,1,1);//pth4[sz - 1] , 1,1);//pth6[sz - 1] , pth8[sz - 1]);
    free(pth1);
    free(pth2);
    free(pth3);
    free(pth4);
    delete [] pth5;
    delete [] pth6;
    delete [] pth7;
    delete [] pth8;

    /*a = new char[sz];
    b = new char[sz];

    for (int x = 0 ; x < sz; x++)
        a[x] =  x%50;

    asm("#a2,b2 = a,b");

    a2 = (double*) a;
    b2 = (double*) b;

    gettimeofday(&t1 , NULL);

    asm("#for loop:");
    for (int x = 0 ; x < sz/8; x++) {
       *b2++ = *a2++;
    }
    asm("#end for loop");
    //memcpy((void *)b , (void *)a , sz*sizeof(char));

    gettimeofday(&t2, NULL);

    total += t2.tv_sec - t1.tv_sec;
    total += (t2.tv_usec - t1.tv_usec)/1000000.0;


    cout << total << endl;
    printf("%d\n",b[sz - 1]);
    //cout << 200.0/(total*kB) << endl;

    delete [] a;
    delete [] b;*/

    return 0;
}
