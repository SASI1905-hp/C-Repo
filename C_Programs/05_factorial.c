#include <stdio.h>

int main() {
    int n, i;
    long factorial = 1;
    printf("Enter a number: ");
    scanf("%d", &n);
    
    if (n < 0) {
        printf("Factorial of negative numbers is not defined\n");
    } else {
        for (i = 1; i <= n; i++) {
            factorial *= i;
        }
        printf("Factorial of %d is %ld\n", n, factorial);
    }
    
    return 0;
}
