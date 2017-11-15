#include <stdio.h>

extern void prostopadloscian(float a, float b, float c, float *objetosc, float *pole);

int main()
{
	float a, b;
	prostopadloscian(10, 200, 300, &a, &b);
	printf("%f %f", a,b);
    return 0;
}


