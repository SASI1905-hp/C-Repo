#include <stdio.h>

int main() {
    int n, i, sum = 0;
    printf("Enter how many numbers: ");
    scanf("%d", &n);
    
    for (i = 1; i <= n; i++) {
        sum += i;
    }
    
    printf("Sum of first %d natural numbers: %d\n", n, sum);
    return 0;
}
