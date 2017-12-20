#include <cstdio>
using namespace std;

unsigned int rotate(unsigned int x, int n = 1);
unsigned char rotate(unsigned char x, int n = 1);

int main(){
  unsigned int a = 1;
  printf("%u \n", rotate(a,1));
  printf("%u \n", rotate(a,8));
  printf("%u \n", rotate(a,32));
  
  unsigned char b = 1;
  printf("%u \n", rotate(b,1));
  printf("%u \n", rotate(b,8));
  return 0;
}
