import 'package:flutter/material.dart';

// Task 2

class SecondPage extends StatelessWidget {
  const SecondPage ({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: createTabBar(),
            title: Text('Flutter TabBar Example'),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Car")),
              Center(child: Text("Transit")),
              Center(child: Text("Bike")),
              Center(child: Text("Boat")),
              Center(child: Text("Railway")),
              Center(child: Text("Bus"))
            ],
          ),
        )
    );
  }

  TabBar createTabBar()  {
    return TabBar(
      tabs: [
        Row (children: [Icon(Icons.directions_car), SizedBox(width:5), Text("Car")]),
        Row (children: [Icon(Icons.directions_transit), SizedBox(width:5), Text("Transit")]),
        Row (children: [Icon(Icons.directions_bike), SizedBox(width:5), Text("Bike")]),
        Row (children: [Icon(Icons.directions_boat), SizedBox(width:5), Text("Boat")]),
        Row (children: [Icon(Icons.directions_railway), SizedBox(width:5), Text("Railway")]),
        Row (children: [Icon(Icons.directions_bus), SizedBox(width:5), Text("Bus")]),
      ],
      isScrollable: true,
    );
  }
}