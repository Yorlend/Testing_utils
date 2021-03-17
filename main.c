#include <stdio.h>

#define SUCCESS 0
#define ERROR 1

int sum(int a, int b)
{
    return a + b;
}

int main(void)
{
    int exit_code = SUCCESS;
    int a = 0, b = 0, result = 0;

    if (scanf("%d%d", &a, &b) != 2)
        exit_code = ERROR;
    else
    {
        result = sum(a, b);
        printf("%d\n", result);
    }

    return exit_code;
}