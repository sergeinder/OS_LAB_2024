#!/bin/bash

# Проверка, что переданы аргументы
# $# - количество переданных аргументов

if [ $# -eq 0 ]; then
  echo "Ошибка: Необходимо передать хотя бы один аргумент."
  exit 1
fi

# Инициализация переменных. Они без типов
sum=0
count=0

# Цикл по всем аргументам
# "$@" - Содержит все аргументы 
for arg in "$@"; do
  # Проверка, что аргумент является числом
  
  if [[ $arg =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
    sum=$(( sum + arg))
    count=$((count + 1))
  else
    echo "Предупреждение: '$arg' не является числом и будет проигнорирован."
  fi
done

# Вычисление среднего арифметического
if [ $count -gt 0 ]; then
  average=$((sum/count))
  echo "Среднее арифметическое: $average"
else
  echo "Ошибка: Нет числовых аргументов для вычисления среднего."
  exit 1
fi