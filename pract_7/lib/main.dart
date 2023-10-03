import 'package:flutter/material.dart';
import 'secondPage.dart';

void main() => runApp(MyApp());

// PUSH
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FirstPage(),
//     );
//   }
// }

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Первая страница'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondPage()),
//             );
//           },
//           child: Text('Перейти на вторую страницу'),
//         ),
//       ),
//     );
//   }
// }

// НАВИГАЦИЯ ПО ИМЕНИ
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/': (context) => FirstPage(),
//         '/second': (context) => SecondPage(), // Вторая страница из секонда
//       },
//     );
//   }
// }

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Первая страница'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, '/second');
//           },
//           child: Text('Перейти на вторую страницу'),
//         ),
//       ),
//     );
//   }
// }

// ПЕРЕДАЧА ДАННЫХ
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue, // Основной цвет
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/second': (context) => SecondPage(name: '', age: null, email: ''),
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Ключ формы
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final RegExp nameRegExp = RegExp(r'^[a-zA-Zа-яА-ЯёЁ]+$'); // Допустимые символы в имени
  final RegExp ageRegExp = RegExp(r'^\d+$'); // Допустимые символы в возрасте
  final RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$'); // Допустимые символы в email

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Первая страница'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey, // Привязываем форму к GlobalKey
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Имя',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Введите имя';
                    } else if (!nameRegExp.hasMatch(value)) {
                      return 'Имя должно содержать только буквы';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: ageController,
                  decoration: InputDecoration(
                    labelText: 'Возраст',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Введите возраст';
                    } else if (!ageRegExp.hasMatch(value)) {
                      return 'Возраст должен содержать только цифры';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Введите ваш email';
                    } else if (!emailRegExp.hasMatch(value)) {
                      return 'Email должен быть в формате example@example.com';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Если форма прошла валидацию, переходим на вторую страницу
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondPage(
                            name: nameController.text,
                            age: int.tryParse(ageController.text) ?? 0,
                            email: emailController.text,
                          ),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                  child: Text('Перейти на вторую страницу'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}