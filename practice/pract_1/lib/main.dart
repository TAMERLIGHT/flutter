import 'package:flutter/material.dart';

void main() {
  runApp(TAMER());
}

class TAMER extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TAMER'),
          backgroundColor: Colors.pink,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              height: 817,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  Text('Добро пожаловать в приложение TAMER!',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
               ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}