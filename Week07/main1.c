#include <stdio.h>

extern int iloczyn (int n, int *tab);

int main()
{
      int a[] = {2,-3};
      printf("%i\n", iloczyn(2,a));
      return 0;
}
