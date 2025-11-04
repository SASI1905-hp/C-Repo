#include <stdio.h>
#include <string.h>

int main() {
    char str[100], reversed[100];
    printf("Enter a string: ");
    scanf("%s", str);
    strcpy(reversed, str);
    strrev(reversed);
    
    if (strcmp(str, reversed) == 0)
        printf("%s is a palindrome\n", str);
    else
        printf("%s is not a palindrome\n", str);
    
    return 0;
}
