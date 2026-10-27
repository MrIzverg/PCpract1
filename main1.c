#include <stdio.h>

int main()
{
    int num;
    printf("Введите 4х значное число:");
    scanf("%d", &num);
    if (999 < num & num < 10000)
    {
        int h1, h2, h3, h4;
        h1 = num / 1000;
        num = num - h1 * 1000;
        h2 = num / 100;
        num = num - h2 * 100;
        h3 = num / 10;
        num = num - h3 * 10;
        h4 = num % 10;

        num = h4 * 1000 + h2 * 100 + h3 * 10 + h1;
        printf("Число: %d\n", num);
    }
    else
    {
        printf("Неправильный ввод\n");
    }
    return 0;
}