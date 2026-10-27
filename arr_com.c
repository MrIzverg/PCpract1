#include <stdio.h>
#include "arr_com.h"

void autofill_arr(int *arr, int n)
{
    for (int i = 0; i < n; i++)
        arr[i] = i + 1;
}

void print_arr(const int *arr, int n)
{
    for (int i = 0; i < n; i++)
        printf("%d\n", arr[i]);
}

void print_int(int x)
{
    printf("%d\n", x);
}