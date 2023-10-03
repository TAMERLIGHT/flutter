import 'package:flutter/material.dart';

// PUSH
// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Вторая страница'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context); // Возвращаемся на первую страницу
//           },
//           child: Text('Вернуться на первую страницу'),
//         ),
//       ),
//     );
//   }
// }

// НАВИГАЦИЯ ПО ИМЕНИ
// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Вторая страница'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context); // Возвращаемся на первую страницу
//           },
//           child: Text('Вернуться на первую страницу'),
//         ),
//       ),
//     );
//   }
// }

// ПЕРЕДАЧА ДАННЫХ
class SecondPage extends StatelessWidget {
  final String name;
  final int? age;
  final String email;

  SecondPage({required this.name, required this.age, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вторая страница'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Имя: $name',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Возраст: $age',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Email: $email',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Вернуться на первую страницу'),
            ),
          ],
        ),
      ),
    );
  }
}