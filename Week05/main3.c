#include <stdio.h>

extern long double iloczyn_skalarny(int n, long double * x, long double * y);

int main()
{
  long double x[] = {10, 12, 13, 14, 15, 16, 7, 18, 9, 10};
  long double x2[] = {-1, 2, -3, 14, -5, 6, -7, 18, -9, -10};
  long double y[] = {13, 14, 13,41, 31, 13, 13, 31, 31, 13}; 
  
  printf("%Lf \n", (iloczyn_skalarny(10, x, y)));
  printf("%Lf \n", (iloczyn_skalarny(1, x, y)));
  printf("%Lf \n", (iloczyn_skalarny(6, x, y)));
  printf("%Lf \n", (iloczyn_skalarny(10, x2, x)));
  return 0;
}
