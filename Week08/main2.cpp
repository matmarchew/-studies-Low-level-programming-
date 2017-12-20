#include <cstdio>
using namespace std;

void kopiuj(int *cel, int *zrodlo, unsigned int n);
void zeruj(int *tablica, unsigned int n);

int main(){
  int a[3] = {1,2,3};
  int b[3] = {0,0,0};
  kopiuj(b,a,3);
  printf("%i \n", b[1]);
  zeruj(a,3);
  printf("%i \n", a[0]);
  return 0;
}
