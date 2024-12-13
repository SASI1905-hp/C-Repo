#include<stdio.h>
int main()
{
    int n;
    scanf("%d",&n);
    char Q[26]={'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
    for(int i=0;i<n;i++){
        for(int j=n-1;j>=i;j--){
            printf("%c ",Q[n-i-1]);
        }
        printf("\n");
    }
}