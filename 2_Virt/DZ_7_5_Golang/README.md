# Домашнее задание к занятию "5. Основы golang"

## Задача 1. Установите golang.
1. Воспользуйтесь инструкций с официального сайта: [https://golang.org/](https://golang.org/).
2. Так же для тестирования кода можно использовать песочницу: [https://play.golang.org/](https://play.golang.org/).

## Задача 2. Знакомство с gotour.
У Golang есть обучающая интерактивная консоль [https://tour.golang.org/](https://tour.golang.org/).
Рекомендуется изучить максимальное количество примеров. В консоли уже написан необходимый код,
осталось только с ним ознакомиться и поэкспериментировать как написано в инструкции в левой части экрана.

## Задача 3. Написание кода.
Цель этого задания закрепить знания о базовом синтаксисе языка. Можно использовать редактор кода
на своем компьютере, либо использовать песочницу: [https://play.golang.org/](https://play.golang.org/).

1. Напишите программу для перевода метров в футы (1 фут = 0.3048 метр). Можно запросить исходные данные
   у пользователя, а можно статически задать в коде.
   Для взаимодействия с пользователем можно использовать функцию `Scanf`:
    ```
    package main
    
    import "fmt"
    
    func main() {
        fmt.Print("Enter a number: ")
        var input float64
        fmt.Scanf("%f", &input)
    
        output := input * 2
    
        fmt.Println(output)    
    }
    ```
### Ответ:
   ```go
   package main
   
   import (
       "fmt"
   )
   
   func main() {
       fmt.Print("Enter a number: ")
       var input float64
       _, err := fmt.Scanf("%f", &input)
       if err != nil {
           fmt.Println("Not a valid number!")
           return
       }
       output := input / 0.3048
       fmt.Println(output)
   }
   ```

2. Напишите программу, которая найдет наименьший элемент в любом заданном списке, например:
    ```
    x := []int{48,96,86,68,57,82,63,70,37,34,83,27,19,97,9,17,}
    ```
### Ответ:
   ```go
   package main

import "fmt"

func main() {
   array := []int{48, 96, 86, 68, 57, 82, 63, 70, 37, 34, 83, 27, 19, 97, 9, 17}
   var result int
   result = array[0]
   for i := 0; i < len(array); i++ {
      if array[i] < result {
         result = array[i]
      }
   }
   fmt.Println(result)
}

   ```   

3. Напишите программу, которая выводит числа от 1 до 100, которые делятся на 3. То есть `(3, 6, 9, …)`.

### Ответ:
   ```go
package main

import "fmt"

func main() {
   for i := 1; i <= 100; i++ {
      if i%3 == 0 {
         fmt.Println(i)
      }
   }
}
   ```   


В виде решения ссылку на код или сам код.

### Ответ

Помимо встроенного в текст, код также доступен в директории, где находится этот readme


