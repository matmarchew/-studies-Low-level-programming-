#include <stdio.h>

typedef struct{
	int max;
	int min;
} MM;

MM minmax(int N, ...);

int main(){
	MM wynik = minmax(7, 1, 2, 4, 90, 4, 11, 101);
	printf("min = %d, max = %d \n", wynik.min, wynik.max);
	return 0;
}
