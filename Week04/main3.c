#include <stdio.h>

void sortuj(int *a, int *b, int *c);

int main()
{
      int x=5, y=3, z=4;
      sortuj(&x, &y, &z);
      printf(" %d %d %d \n", x, y, z);
      return 0;
}
