#include <stdlib.h>
#include <sys/alt_stdio.h>
#include <sys/alt_alarm.h>
#include <sys/times.h>
#include <alt_types.h>
#include <system.h>
#include <stdio.h>
#include <unistd.h>

// test_case 1
#define step 5
#define N 52
// test_case 2
//#define step 1/8.0
//#define N 2041
//Test case 3
//#define step 1/1024.0
//#define N 261121

void generateVector(float x[N]){
	int i;
	x[0] = 0;
	for (i=1; i<N; i++){
		x[i] = x[i-1] + step;
	}
}

float sumVector(float x[], int M){
	float y = 0.0;
	for(int i = 0; i < M; i++){
		y += x[i] + x[i] * x[i];
	}
	return y;
}

int main()
{
 float x[N];
 float y;
 generateVector(x);

 clock_t exec_t1, exec_t2;
 exec_t1 = times(NULL);
 y = sumVector(x, N);
 exec_t2 = times(NULL);
 printf("T: %d, A: %d", (int)(exec_t2 - exec_t1), (int) y);
 return 0;
}
