import 'package:flutter/material.dart';
import 'secon_page.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

// Task 1

// class MyApp extends StatelessWidget {
//   @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     theme: ThemeData(
  //       primarySwatch: Colors.pink,
  //       visualDensity: VisualDensity.adaptivePlatformDensity,
  //     ),
  //     home: MyHomePage(),
  //   );
  // }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key}) : super(key: key);

//   @override
//   MyHomePageState createState() {
//     return MyHomePageState();
//   }
// }

// class MyHomePageState extends State<MyHomePage> {
//   String answer = "?";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter AlertDialog Example"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               child: Text("Question"),
//               onPressed: () {
//                 showMyAlertDialog(context);
//               },
//             ),
//             SizedBox(height: 10), // добавляем отступ между кнопкой и текстом Answer
//             Text("Answer: " + this.answer.toString())
//           ],
//         ),
//       ),
//     );
//   }

//   void showMyAlertDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog( // возврат
//           title: Text("Election 2020"),
//           content: Text("Will you vote for Trump?"),
//           actions: [
//             ElevatedButton(
//               child: Text("Yes"), 
//               onPressed: () {
//                 setState(() {
//                   answer = "Yes, Of course!";
//                 });
//                 Navigator.of(context).pop(); // закрываем алерт
//               },
//             ),
//             ElevatedButton(
//               child: Text("No"),
//               onPressed: () {
//                 setState(() {
//                   answer = "No, I will vote for Biden";
//                 });
//                 Navigator.of(context).pop(); // закрываем алерт
//               },
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const SecondPage()),
//                   ); // закрываем алерт
//               },
//               child: const Text('Go to 2 page'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

// Task 3

// class MyApp extends StatelessWidget {  
//   @override  
//   Widget build(BuildContext context) {  
//     return MaterialApp(  
//       home: Scaffold(  
//         appBar: AppBar(title: Text('Flutter Card Example')),  
//         backgroundColor: Colors.yellow,  
//         body: MyCardWidget(),  
//       ),  
//     );  
//   }  
// }  

// class MyCardWidget extends StatelessWidget {  
//   MyCardWidget({Key? key}) : super(key: key);  
  
//   @override  
//   Widget build(BuildContext context) {  
//     return Center(  
//       child: Container(  
//         width: 300,  
//         height: 220,  
//         padding: new EdgeInsets.all(10.0),  
//         child: Card(  
//           shape: RoundedRectangleBorder(  
//             borderRadius: BorderRadius.circular(15.0),  
//           ),  
//           color: Colors.red,  
//           elevation: 10,  
//           child: Column(  
//             mainAxisSize: MainAxisSize.min,  
//             children: <Widget>[  
//               const ListTile(  
//                 leading: Icon(Icons.album, size: 60),  
//                 title: Text(  
//                   'Sonu Nigam',  
//                   style: TextStyle(fontSize: 30.0)  
//                 ),  
//                 subtitle: Text(  
//                   'Best of Sonu Nigam Music.',  
//                   style: TextStyle(fontSize: 18.0)  
//                 ),  
//               ),  
//               ButtonBar(  
//                 children: <Widget>[  
//                   ElevatedButton(  
//                     child: const Text('Play'),  
//                     onPressed: () {},  
//                   ),  
//                   ElevatedButton(  
//                     child: const Text('Pause'),  
//                     onPressed: () {},  
//                   ),  
//                 ],  
//               ),  
//             ],  
//           ),  
//         ),  
//       )  
//     );  
//   }  
// }

// Task 4

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//        appBar: AppBar(
//           centerTitle: true,
//           title: Text('Меню-гамбургер'),
//           backgroundColor: Colors.blue,
//         ),
//         body: App(),
//         drawer: Drawer(
//           child: new ListView(
//             children: <Widget>[
//               new DrawerHeader(
//                 margin: EdgeInsets.zero,
//                 padding: EdgeInsets.zero,
//                 child: UserAccountsDrawerHeader (
//                   decoration: BoxDecoration(color: Colors.blue),
//                   accountName: Text('Tamerlan Duisembin'),
//                   accountEmail: Text("info@tamer.kz"),
//                   currentAccountPicture: Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.rectangle,
//                       color: Colors.pink,
//                     )
//                   ),
//               ),
//                 ),
//             new ListTile(
//               title: new Text("О себе"),
//                 leading: Icon(Icons.account_box),
//               onTap: (){}
//             ),
//             new ListTile(
//                 title: new Text("Настройки"),
//                 leading: Icon(Icons.settings),
//                 onTap: (){}
//               )
//             ],
//       ),
//     ),
//   )));
// }

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// Task 5

// class MyApp extends StatelessWidget {  
//   @override  
//   Widget build(BuildContext context) {  
//     final appTitle = 'Flutter Basic List Demo';  
  
//     return MaterialApp(  
//       title: appTitle,  
//       home: Scaffold(  
//         appBar: AppBar(  
//           title: Text(appTitle),  
//         ),  
//         body: ListView(  
//           children: <Widget>[  
//             ListTile(  
//               leading: Icon(Icons.map),  
//               title: Text('Map'),  
//             ),  
//             ListTile(  
//               leading: Icon(Icons.photo_album),  
//               title: Text('Album'),  
//             ),  
//             ListTile(  
//               leading: Icon(Icons.phone),  
//               title: Text('Phone'),  
//             ),  
//             ListTile(  
//               leading: Icon(Icons.contacts),  
//               title: Text('Contact'),  
//             ),  
//             ListTile(  
//               leading: Icon(Icons.settings),  
//               title: Text('Setting'),  
//             ),  
//           ],  
//         ),  
//       ),  
//     );  
//   }  
// }

// Task 6

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'TAMER.KZ',
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // Generate a list of available hobbies here
//   List<Map> availableHobbies = [
//     {"name": "Foobball", "isChecked": false},
//     {"name": "Baseball", "isChecked": false},
//     {
//       "name": "Video Games",
//       "isChecked": false,
//     },
//     {"name": "Readding Books", "isChecked": false},
//     {"name": "Surfling The Internet", "isChecked": false}
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Kindacode.com'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             const Text(
//               'Choose your hobbies:',
//               style: TextStyle(fontSize: 24),
//             ),
//             const SizedBox(height: 10),
//             const Divider(),
//             const SizedBox(height: 10),

//             // The checkboxes will be here
//             Column(
//                 children: availableHobbies.map((hobby) {
//               return CheckboxListTile(
//                   value: hobby["isChecked"],
//                   title: Text(hobby["name"]),
//                   onChanged: (newValue) {
//                     setState(() {
//                       hobby["isChecked"] = newValue;
//                     });
//                   });
//             }).toList()),
//             // Display the result here
//             const SizedBox(height: 10),
//             const Divider(),
//             const SizedBox(height: 10),
//             Wrap(
//               children: availableHobbies.map((hobby) {
//                 if (hobby["isChecked"] == true) {
//                   return Card(
//                     elevation: 3,
//                     color: Colors.amber,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(hobby["name"]),
//                     ),
//                   );
//                 }
//                 return Container();
//               }).toList(),
//             )
//           ]),
//         ),
//       ),
//     );
//   }
// }

// Task 7

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       // Hide the debug banner
//       debugShowCheckedModeBanner: false,
//       title: 'TAMER.KZ',
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State <HomePage> {
//   String _selectedGender = 'male';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Kindacode.com',
//         ),
//       ),
//       body: Padding(
//           padding: const EdgeInsets.all(25),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text('Please let us know your gender:'),
//               ListTile(
//                 leading: Radio<String>(
//                   value: 'male',
//                   groupValue: _selectedGender,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedGender = value!;
//                     });
//                   },
//                 ),
//                 title: const Text('Male'),
//               ),
//               ListTile(
//                 leading: Radio<String>(
//                   value: 'female',
//                   groupValue: _selectedGender,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedGender = value!;
//                     });
//                   },
//                 ),
//                 title: const Text('Female'),
//               ),
//               const SizedBox(height: 25),
//               Text(_selectedGender == 'male' ? 'Hello gentlement!' : 'Hi lady!')
//             ],
//           )),
//     );
//   }
// }

// Task 8

// class MyApp extends StatelessWidget {  
//   @override  
//   Widget build(BuildContext context) {  
//     return MaterialApp(  
//       home: LinearProgressIndicatorApp(),  
//     );  
//   }  
// }  
  
// class LinearProgressIndicatorApp extends StatefulWidget {  
//   @override  
//   State<StatefulWidget> createState() {  
//     return LinearProgressIndicatorAppState();  
//   }  
// }  
  
// class LinearProgressIndicatorAppState extends State <LinearProgressIndicatorApp> {  
//   bool _loading = false;  
  
//   @override  
//   void initState() {  
//     super.initState();  
//     _loading = false;    
//   }  
//   @override  
//   Widget build(BuildContext context) {  
//     return Scaffold(  
//       appBar: AppBar(  
//         title: Text("Flutter Linear Progress Bar"),  
//       ),  
//       body: Center(  
//         child: Container(  
//           padding: EdgeInsets.all(12.0),  
//           child: _loading  
//               ? Column(  
//             mainAxisAlignment: MainAxisAlignment.center,  
//             children: <Widget>[  
//               LinearProgressIndicator(  
//                 backgroundColor: Colors.cyanAccent,  
//                 valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),   
//               ),   
//             ],  
//           )  
//               : Text("Press button for downloading", style: TextStyle(fontSize: 25)),  
//         ),  
//       ),  
//       floatingActionButton: FloatingActionButton(  
//         onPressed: () {  
//           setState(() {  
//             _loading = !_loading;  
//             _updateProgress();  
//           });  
//         },  
//         tooltip: 'Download',  
//         child: Icon(Icons.cloud_download),  
//       ),  
//     );  
//   }  
   
//   void _updateProgress() {  
//     const oneSec = const Duration(seconds: 1);  
//     new Timer.periodic(oneSec, (Timer t) {  
//       setState(() {   
//         if (_loading == true) {  
//           _loading = false;  
//           t.cancel();  
//           return;  
//         }  
//       });  
//     });  
//   }  
// } 

// Task 9

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Loader(),
//       );
//   }
// }
  
// class Loader extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TAMER'),
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircularProgressIndicator(),
//             SizedBox(
//               height: 15,
//               ),
//             LinearProgressIndicator(),
//             ],
//           ),
//         ),
//       );
//   }
// }

// Task 10

class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      theme: new ThemeData(  
        primaryColor: const Color(0xFF43a047),  
        accentColor: const Color(0xFFffcc00),  
        primaryColorBrightness: Brightness.dark,  
      ),  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text('Flutter SnackBar Demo'),  
        ),  
        body: SnackBarPage(),  
      ),  
    );  
  }  
}  
class SnackBarPage extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Center(  
      child: RaisedButton(  
        child: Text('Show SnackBar', style: TextStyle(fontSize: 25.0),),  
        textColor: Colors.white,  
        color: Colors.redAccent,  
        padding: EdgeInsets.all(8.0),  
        splashColor: Colors.grey,  
        onPressed: () {  
          final snackBar = SnackBar(  
            content: Text("Hey! I'm Tamerlan!"),  
            duration: Duration(seconds: 5),  
            action: SnackBarAction(  
              label: 'Undo',  
              onPressed: () {  
                // Some code to undo the change.  
              },  
            ),  
          );  
          Scaffold.of(context).showSnackBar(snackBar);  
        },  
      ),  
    );  
  }  
} 