# Coursework
COURSE IN C #, MS VISUAL STUDIO 2019, DATABASES/КУРСОВАЯ РАБОТА ПО C#, MS VISUAL STUDIO 2019, БАЗЫ ДАННЫХ

# Разработка приложения автоматизации работы аэропорта

В данной работе описывается пошаговый процесс создания приложения, которое осуществляет автоматизацию работы аэропорта для отслеживания правельной работы сотрудников и регистрации билетов.

Приложение реализовано в Microsoft Visual Studio 2019 на языке программирования C#. База данных MySQL.

## Содержание 
> Условие задачи
> Выполнение
  [1.Создание базы данных][1]
  [2.Создание проекта в Microsoft Visual Studio 2019][3]

## Выполнение
# [1]: 1. Создание базы данных

 Базу данных проектируем в системе MySQL. Готовую базу данных можно загрузить [здесь][2]: .

 В соответствии с условием задачи, имеем 6 таблиц. Пять таблиц содержат данные о:
  1. маршрутах перевозки;
  2. проданных билетах;
  3. диспетчера, который контралирует рейс и вносит информацию в базу данных;
  4. воздушное транспортное средство (самолет), на котором осуществляется перелет;
  5. пилот, который выполняет рейс;
  6. бортпроводники, которые осуществляют обслуживание пассажиров.

Назавем эти таблицы именами: