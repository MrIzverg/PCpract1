#include <stdio.h>
#include "arr_com.h"
#include "process2.h"

int main()
{
    int arr[45];
    autofill_arr(arr, 45);
    int sum = sum_range(arr, 1, 44);
    print_int(sum);
    return 0;
}