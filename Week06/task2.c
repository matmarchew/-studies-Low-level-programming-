#include <stdio.h>

char f(char a, char b, char c){
	long long power = 1;
	for(int i=0; i<b; i++)
		power *= a;
	return c + power % 26;
}
