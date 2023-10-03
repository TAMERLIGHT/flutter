import 'package:flutter/material.dart';

void main() {
  // Это первая функция, которую Dart & Flutter выполняют при запуске Application.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Строение на базовом классе, получение всех функций базового класса и добавление новых возможностей для него
  // Мы его наследуем, добавляя ключевое слово extends здесь и после класса перед фигурными скобками
  const MyApp({Key? key}) : super(key: key);

  @override
  // Особый тип объекта, предоставляемый Flutter в material.dart, этот объект контекста относится к этому типу, и мы
  // автоматом получаем его Flutter.
  // Build также является функцией, который что-либо возвращает, здесь он должен вернуть виджет, потому что мы работаем
  // с виджетами во Flutter. Все наше приложение - как виджет.
  // Функция сборки - это то, что Dart и Flutter вызовут в конце, когда они что-то попытаются отрисовать на экране.
  // Соответственно метод сборки возвращает - виджет.
  Widget build(BuildContext context) {
    return MaterialApp(
      // Home основной виджет, который Flutter выводит на экран.
      title: "TAMER",
      home: Scaffold(appBar: AppBar(backgroundColor: Colors.pink,),
      body: Container(color: Colors.purple, child: Text("Test")),)
    );
  }
}
