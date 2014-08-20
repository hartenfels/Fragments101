#include <stdio.h>

unsigned long
unstructuredFactorial(unsigned long f)
{
    unsigned long result = 1;
AGAIN:
    if (f == 0) return result;
    result *= f--;
    goto AGAIN;
}

unsigned long
structuredFactorial(unsigned long f)
{
    unsigned long i, result = 1;
    for (i = 1; i <= f; ++i)
        result *= i;
    return result;
}

int
main(void)
{
    printf("%lu\n", unstructuredFactorial(5));
    printf("%lu\n",   structuredFactorial(5));
    return 0;
}
