// ctree - ASCII Christmas Tree

#include <stdio.h>
#include <stdlib.h>

int main() {
   int n = 27, s = n - 1, i, j;
   system("clear");
   for (i=0; i<n; i++) {
       for (j=0; j < s; j++) printf(" ");
       for (j=0; j < 2*i-1; j++) {
           if ((rand() % 10) == 1) { printf("O"); }
           else { printf("*"); }
       }
       s--;
       printf("\n");
   }
}
