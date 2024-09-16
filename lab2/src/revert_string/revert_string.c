#include "revert_string.h"
#include <string.h>

void RevertString(char *str)
{
    int length = strlen(str);
    int start = 0;
    int end = length - 1;
    char temp;

    while (start < end) {
        // Меняем символы местами
        temp = str[start];
        str[start] = str[end];
        str[end] = temp;

        // Сдвигаем указатели
        start++;
        end--;
    }
}

