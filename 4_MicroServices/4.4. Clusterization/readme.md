
# Домашнее задание к занятию «Микросервисы: масштабирование»

Вы работаете в крупной компании, которая строит систему на основе микросервисной архитектуры.
Вам как DevOps-специалисту необходимо выдвинуть предложение по организации инфраструктуры для разработки и эксплуатации.

## Задача 1: Кластеризация

Предложите решение для обеспечения развёртывания, запуска и управления приложениями.
Решение может состоять из одного или нескольких программных продуктов и должно описывать способы и принципы их взаимодействия.

Решение должно соответствовать следующим требованиям:

- поддержка контейнеров;
- обеспечивать обнаружение сервисов и маршрутизацию запросов;
- обеспечивать возможность горизонтального масштабирования;
- обеспечивать возможность автоматического масштабирования;
- обеспечивать явное разделение ресурсов, доступных извне и внутри системы;
- обеспечивать возможность конфигурировать приложения с помощью переменных среды, в том числе с возможностью безопасного хранения чувствительных данных таких как пароли, ключи доступа, ключи шифрования и т. п.

Обоснуйте свой выбор.

## Ответ

Предложение решения для обеспечения развёртывания, запуска и управления приложениями:

1. Оркестратор контейнеров: **Kubernetes**
   - Обоснование: Kubernetes является широко используемым и надежным оркестратором контейнеров. Он обеспечивает поддержку контейнеров и позволяет разворачивать, запускать и управлять приложениями в масштабируемой и отказоустойчивой среде. Kubernetes обладает возможностями обнаружения сервисов и маршрутизации запросов, позволяет горизонтальное и автоматическое масштабирование, а также предоставляет явное разделение ресурсов доступных извне и внутри системы. Он также поддерживает конфигурирование приложений с помощью переменных среды, включая безопасное хранение чувствительных данных.

2. Хранилище секретов: **Kubernetes Secrets**
   - Обоснование: Kubernetes предоставляет встроенный механизм для хранения секретных данных, таких как пароли, ключи доступа и ключи шифрования. Использование Kubernetes Secrets позволяет безопасно хранить и управлять чувствительными данными, доступными при конфигурировании приложений через переменные среды.

Решение с использованием Kubernetes и Kubernetes Secrets обеспечивает мощный и надежный инструментарий для развёртывания, запуска и управления приложениями. Kubernetes позволяет эффективно масштабировать приложения, обеспечивает маршрутизацию запросов и разделение ресурсов, а также предоставляет возможность конфигурирования приложений с помощью переменных среды. Использование Kubernetes Secrets обеспечивает безопасное хранение и управление секретными данными при конфигурировании приложений.