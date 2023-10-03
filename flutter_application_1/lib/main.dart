import 'package:flutter/material.dart';

void main() {
  runApp(MyButtons());
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