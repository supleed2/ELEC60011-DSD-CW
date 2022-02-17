#include <stdlib.h>
#include <sys/alt_stdio.h>
#include <sys/alt_alarm.h>
#include <sys/times.h>
#include <alt_types.h>
#include <system.h>
#include <stdio.h>
#include <unistd.h>
#include <math.h>

#define test_case_3

#ifdef test_case_1
#define step 5
#define N 52
#endif
#ifdef test_case_2
#define step 1/8.0
#define N 2041
#endif
#ifdef test_case_3
#define step 1/1024.0
#define N 261121
#endif
#ifdef test_case_4
#define N 2323
#define RANDSEED 334
#define MAXVAL 255

void generateRandomVector(float x[N]){
	srand(RANDSEED);
	for (int i = 0; i < N; i++){
		x[i] = ((float) rand() / (float) RAND_MAX) * MAXVAL;
	}
}

#endif

#ifndef test_case_4
void generateVector(float x[N]){
	int i;
	x[0] = 0;
	for (i=1; i<N; i++){
		x[i] = x[i-1] + step;
	}
}
#endif

float sumVector(float x[], int M){
	float y = 0.0;
	for(int i = 0;i<=M;i++){
		y += (float)((int)x[i]>>1) + x[i]*x[i]*cosf((x[i]-128)*0.0078125);
	}
	return y;
}

int main()
{
	printf("Task 3!\n");
	float x[N];
	float y;
#ifndef test_case_4
	generateVector(x);
#else
	generateRandomVector(x);
#endif
	clock_t exec_t1, exec_t2;
	exec_t1 = times(NULL);
	y = sumVector(x, N) / 1024.0;
	exec_t2 = times(NULL);
	printf("T: %d, A: %d", (int)(exec_t2 - exec_t1), (int) y);
	return 0;
}
