#include <stdio.h>

void prime_devisors(int n)
{
    int tmp = n;
    int i = 2;
    while (tmp != 1)
    {
        while (tmp % i == 0)
        {
            printf("%d\n", i);
            tmp /= i;
        }
        i++;
    }
    
}

int main()
{
    int n;

    if ((scanf("%d", &n) != 1) || (n < 1)) 
        return 1;

    prime_devisors(n);

    return 0;
}