import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text("jnjjn"),),
    body: Container(),),);
  }
}

// Practice 5

// Task 1
// void main() {
//   runApp(Align(
//     alignment: Alignment.centerLeft, // выравнивание по горизонтали по левому краю, по вертикали - по центру контейнера.
//     child: Text(
//       'Текст слева по центру!',
//       textDirection: TextDirection.ltr,
//       style: TextStyle (fontSize: 24)
//     ),
//   ),
//   );
// }

// Task 2
// void main() {
//   runApp(Center(
//     child: Text(
//       'Hello Flutter',
//       textDirection: TextDirection.ltr,
//     ),
//   ),
//   );
// }

// // Task 3
// void main() {
//   runApp(Padding (
//     padding: EdgeInsets.all(40),
//       child: Align (
//         alignment: Alignment.topCenter,
//         child: Text(
//           'Hello Flutter from tamer.kz',
//           textDirection: TextDirection.ltr
//         )
//       )
//     )
//   );
// }

// Task 4
// void main() {
//   runApp(Container (
//     padding: EdgeInsets.only(top: 30, left: 10),
//     color: Colors.teal,
//       child: Column (
//         textDirection: TextDirection.ltr,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text('Вот мысль, которой вес я предан,',
//           textDirection: TextDirection.ltr),
//           Text('Итог всего, что ум скопил.',
//           textDirection: TextDirection.ltr),
//           Text('Лишь тот, кем бой за жизнь изведан,',
//           textDirection: TextDirection.ltr),
//           Text('Жизнь и свободу заслужил.',
//           textDirection: TextDirection.ltr),
//         ]
//       )
//     )
//   );
// }

// // Task 5
// void main() {
//   runApp(Container (
//     padding: EdgeInsets.all(30),
//     color: Colors.teal,
//       child: Row (
//         textDirection: TextDirection.ltr,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         verticalDirection: VerticalDirection.down,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           Text('Tom',
//           textDirection: TextDirection.ltr),
//           Text('Bob',
//           textDirection: TextDirection.ltr),
//           Text('Sam',
//           textDirection: TextDirection.ltr),
//           Text('Alice',
//           textDirection: TextDirection.ltr),
//         ]
//       )
//     )
//   );
// }

// Task 6
// void main() {
//   runApp(Container (
//     padding: EdgeInsets.all(30),
//     color: Colors.teal,
//       child: Row (
//         textDirection: TextDirection.ltr,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         verticalDirection: VerticalDirection.down,
//         children: <Widget>[
//           Expanded(
//             child: Text('Через несколько дней после отъезда Анатоля, Пьер получил записку от князя Андрея, извещавшего его о своем приезде и просившего Пьера заехать к нему.',
//             textDirection: TextDirection.ltr),
//           )
//         ]
//       )
//     )
//   );
// }

// // Task 7
// void main() {
//   runApp(Container(
//     color: Colors.white,
//     padding: EdgeInsets.only(top:40, bottom: 10, left: 20, right: 20),
//     child: Stack(
//       textDirection: TextDirection.ltr,
//       children: <Widget>[
//         Container(
//           width: 200,
//           height: 200,
//           color: Colors.blueGrey,
//         ),
//         Container(
//           width: 150,
//           height: 150,
//           color: Colors.cyan,
//         ),
//         Container(
//           width: 100,
//           height: 100,
//           color: Colors.blue,
//         ),
//       ],
//     )
//   )
//   );
// }

// Task 8
// void main() {
//   runApp(Container(
//     color: Colors.white,
//     child: Image.network("https://s2-goods.ozstatic.by/1000/442/787/10/10787442_0.jpg"),
//   ));
// }

// Task 9
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: Image.asset("assets/images/priroda.jpg"),
//       appBar: AppBar(
//         title: const Text("TAMER.KZ"),
//       ),
//     ),
//   ));
// }

// Task 10
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Mater
  }

class MyButtons extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text('TAMER'), 
      ), 
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[ 
            TextButton( 
              onPressed: () { 
              }, 
              child: Text('Text Button'), 
            ), 
            SizedBox(height: 20),  
            ElevatedButton( 
              onPressed: () { 
              }, 
              child: Text('Elevated Button'), 
            ), 
            SizedBox(height: 20), 
            OutlinedButton( 
              onPressed: () { 
              }, 
              child: Text('Outlined Button'), 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
}

//   @override
//   Widget build(BuildContext context) {
//     throw UnimplementedError();
//   }
// }

// Task 11
void main() {
  runApp(MaterialApp(
      home:  Scaffold(
        body: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            icon: Icon(Icons.login),
            hintText: "Введите логин",
            helperText: "Логин используется для входа в систему",
        )),
        appBar: AppBar(title: Text("METANIT.COM")))
  ));
}