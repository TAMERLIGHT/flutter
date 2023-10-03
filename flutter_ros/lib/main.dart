// ROS: Duisembin Tamerlan

import 'package:flutter/material.dart';
// import 'package:flutter_ros/ui/widgets/BAppBar.dart';
// import 'package:flutter_ros/utils/constants.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_ros/indexedStack.dart';
// import 'package:flutter_ros/positioned.dart';
// import 'package:flutter_ros/stack.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'anonymous_routes.dart';

// P.S. Некоторые практические задания (включая бонусные) были пропущены, 
// так как там была показана установка и первый запуск flutter/dart

void main () => runApp(ScreenWidget());

// #1
// class ScreenWidget extends StatelessWidget {
//   const ScreenWidget({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('StatelessWidget'),
//         ),
//         body: SimpleWidget(),
//       ),
//     );
//   }
// }

// class SimpleWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text('Мой текст', textDirection: TextDirection.ltr)));
//   }
// }

// #2
// class ScreenWidget extends StatelessWidget {
//   const ScreenWidget({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('StatefulWidget'),
//         ),
//         body: SimpleWidget(),
//       ),
//     );
//   }
// }

// class SimpleWidget extends StatefulWidget {
//   @override
//   _SimpleWidgetState createState() => new _SimpleWidgetState();
// }

// class _SimpleWidgetState extends State<SimpleWidget> {
//   int _count = 0;

//   void _handleButton() {
//     setState(() {
//       _count++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center, 
//         children: <Widget>[
//           Text('$_count'),
//           ElevatedButton(onPressed: () {_handleButton();},
//           child: Text('Click me!'))
//         ],
//       ),
//     );
//   }
// }

// #3
// class ScreenWidget extends StatelessWidget {
//   const ScreenWidget({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Container Widget'),
//         ),
//         body: SimpleWidget(),
//       ),
//     );
//   }
// }

// class SimpleWidget extends StatelessWidget {
//   const SimpleWidget({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Text('Blueberries',
//         style: TextStyle(fontSize: 24, color: Colors.white70),),
//         height: 200,
//         width: 200,
//         alignment: Alignment.center,
//         margin: EdgeInsets.all(50),
//         decoration: BoxDecoration(
//           color: Colors.green,
//           image: DecorationImage(image: Image.network('https://img.freepik.com/premium-photo/blueberries-background-blueberries-close-up-blue-berry-background_780672-957.jpg')
//           .image,
//           fit: BoxFit.cover),
//           shape: BoxShape.circle,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black45,
//               offset: Offset(-5, 5),
//               blurRadius: 5,
//               spreadRadius: 5
//               )
//             ]
//           ),
//       ),
//     );
//   }
// }

// #4
// class ScreenWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Column & Row Widgets'),
//         ),
//         body: SimpleWidget(),
//       ),
//     );
//   }
// }

// class TextWidget extends StatelessWidget {
//   const TextWidget({ Key? key, required this.text, required this.color, required this.width, required this.fontSize }) : super(key: key);

//   final String text;
//   final Color color;
//   final double width;
//   final double fontSize;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: 100,
//       color: color,
//       child: Text(
//         text,
//         style: TextStyle(fontSize: fontSize)),
//     );
//   }
// }

// class SimpleWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       textDirection: TextDirection.rtl,
//       verticalDirection: VerticalDirection.up,
//       children: <Widget>[
//         TextWidget(
//           color: Colors.limeAccent,
//           width: 120,
//           text: 'First',
//           fontSize: 50,
//           ),
//         TextWidget(
//           color: Colors.cyanAccent,
//           width: 180, text: 'Second',
//           fontSize: 40,
//           ),
//         TextWidget(
//           color: Colors.purpleAccent,
//           width: 100,
//           text: 'Third',
//           fontSize: 30,
//           ),
//       ],
//     );
//   }
// }

// #5
class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Widget'),
        ),
        body: ListViewCustomWidget(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal,
      // reverse: true,
      // controller: ScrollController(initialScrollOffset: 100),
      // physics: NeverScrollableScrollPhysics(),
      // padding: EdgeInsets.all(20),
      children: <Widget>[
        TextWidget(text: "1"),
        TextWidget(text: "2"),
        TextWidget(text: "3"),
        TextWidget(text: "4"),
        TextWidget(text: "5"),
        TextWidget(text: "6"),
        TextWidget(text: "7"),
        TextWidget(text: "8"),
        TextWidget(text: "9"),
        TextWidget(text: "10"),
      ],
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // itemCount: 20,
        itemBuilder: (context, index) {
      return TextWidget(text: '$index');
    });
  }
}

class ListViewSeparatedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return TextWidget(text: "$index");
        },
        separatorBuilder: (context, index) {
          return Divider(color: Colors.black);
        },
        itemCount: 20);
  }
}

class ListViewCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.custom(childrenDelegate:
        SliverChildBuilderDelegate((BuildContext context, int index) {
      return TextWidget(text: "$index");
    }));
  }
}

// #6
// class ScreenWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('GridView Widget'),
//         ),
//         body: GridViewCustomWidget(),
//       ),
//     );
//   }
// }

// class TextWidget extends StatelessWidget {
//   final String text;
//   const TextWidget({Key? key, required this.text}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       decoration:
//           BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
//       child: Text(
//         text,
//         style: TextStyle(fontSize: 40),
//       ),
//     );
//   }
// }

// class GridViewWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       ),
//       children: <Widget>[
//         TextWidget(text: "1"),
//         TextWidget(text: "2"),
//         TextWidget(text: "3"),
//         TextWidget(text: "4"),
//         TextWidget(text: "5"),
//         TextWidget(text: "6"),
//         TextWidget(text: "7"),
//         TextWidget(text: "8"),
//         TextWidget(text: "9"),
//         TextWidget(text: "10"),
//       ],
//     );
//   }
// }

// class GridViewBuilderWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         // itemCount: 10,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//         ),
//         itemBuilder: (context, index) {
//           return TextWidget(text: '$index');
//         });
//   }
// }

// class GridViewCountWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 2,
//       children: <Widget>[
//         TextWidget(text: "1"),
//         TextWidget(text: "2"),
//         TextWidget(text: "3"),
//         TextWidget(text: "4"),
//         TextWidget(text: "5"),
//         TextWidget(text: "6"),
//         TextWidget(text: "7"),
//         TextWidget(text: "8"),
//         TextWidget(text: "9"),
//         TextWidget(text: "10"),
//       ],
//     );
//   }
// }

// class GridViewExtentWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final queryData = MediaQuery.of(context);
//     print(queryData.size);

//     return Container(
//         width: 300,
//         color: Colors.greenAccent,
//         child: GridView.extent(
//           maxCrossAxisExtent: 90,
//           children: [
//             TextWidget(text: "1"),
//             TextWidget(text: "2"),
//             TextWidget(text: "3"),
//             TextWidget(text: "4"),
//             TextWidget(text: "5"),
//           ],
//         ));
//   }
// }

// class GridViewCustomWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.custom(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       ),
//       // childrenDelegate: SliverChildListDelegate([
//       //   TextWidget(text: "1"),
//       //   TextWidget(text: "2"),
//       //   TextWidget(text: "3"),
//       // ]));
//       childrenDelegate: SliverChildBuilderDelegate((context, index) {
//         return TextWidget(text: '$index');
//       }),
//     );
//   }
// }

// #7
// class ScreenWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('PageView Widget'),
//         ),
//         body: PageViewCustomWidget(),
//       ),
//     );
//   }
// }

// class TextWidget extends StatelessWidget {
//   final String text;
//   const TextWidget({Key? key, required this.text}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       decoration:
//           BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
//       child: Text(
//         text,
//         style: TextStyle(fontSize: 40),
//       ),
//     );
//   }
// }

// class PageViewWidget extends StatelessWidget {
//   final PageController controller = PageController(initialPage: 0);

//   @override
//   Widget build(BuildContext context) {
//     return PageView(
//       scrollDirection: Axis.vertical,
//       // pageSnapping: false,
//       // physics: BouncingScrollPhysics(),
//       // physics: NeverScrollableScrollPhysics(),
//       controller: controller,
//       // onPageChanged: (number) {
//       //   print("Page number $number");
//       // },
//       children: <Widget>[
//         Container(
//           color: Colors.red,
//           child: Center(
//             child: Text('Stop!'),
//           ),
//         ),
//         Container(
//           color: Colors.orange,
//           child: Center(
//             child: Text('Ready?'),
//           ),
//         ),
//         Container(
//           color: Colors.green,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Go!',
//                 style: TextStyle(fontSize: 40),
//               ),
//               ElevatedButton(
//                   child: Text('Reload'),
//                   onPressed: () {
//                     // controller.jumpToPage(0);
//                     controller.animateToPage(0,
//                         duration: Duration(seconds: 1),
//                         curve: Curves.easeInBack);
//                   })
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class PageViewBuilderWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return PageView.builder(
//       // itemCount: 5,
//       itemBuilder: (BuildContext context, int index) {
//         return Container(
//           color: index % 2 == 0 ? Colors.red : Colors.greenAccent,
//           alignment: Alignment.center,
//           child: Text('$index'),
//         );
//       },
//     );
//   }
// }

// class PageViewCustomWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return PageView.custom(
//       childrenDelegate: SliverChildListDelegate([
//         Text('1'),
//         Text('2'),
//         Text('3'),
//       ]),
//     );
//   }
// }

// #8
// class ScreenWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Stack & Positioned Widgets'),
//         ),
//         // body: Example(),
//         // body: StackWidget(),
//         body: PositionedWidget(),
//         // body: IndexedStackWidget(),
//       ),
//     );
//   }
// }

// #9
// class ScreenWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // theme: ThemeData(fontFamily: 'ShadowsInto'),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Import Fonts'),
//         ),
//         body: Container(
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Roboto font',
//                 style: TextStyle(
//                   // fontFamily: 'Roboto',
//                   // fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 30,
//                 ),
//               ),
//               Text(
//                 'ShadowsInto font',
//                 style: TextStyle(fontSize: 30, fontFamily: 'ShadowsInto'),
//               ),
//               Text(
//                 'Google font',
//                 style: GoogleFonts.lato(
//                   textStyle: TextStyle(
//                     fontStyle: FontStyle.italic,
//                     fontSize: 30,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// #10
// class ScreenWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Import Images'),
//           ),
//           body: ImageWidget()),
//     );
//   }
// }

// class ImageWidget extends StatelessWidget {
//   const ImageWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final String assetNamePath = 'assets/images/bali.jpg';
//     final String assetNameSvg = 'assets/subscribe.svg';
//     final String assetNameUrl = 'https://fffuuu.net/Upload/Images/ved_tak_.png';

//     // AssetImage imageFromAssetImage = AssetImage(assetNamePath);
//     // Image imageFromAsset = Image.asset(assetNameSvg, fit: BoxFit.cover);

//     // Image imageFromNetwork = Image.network(assetNameUrl);

//     // Image changedImage = Image(
//     //   image: imageFromNetwork.image,
//     //   color: Colors.green,
//     //   colorBlendMode: BlendMode.color,
//     // );

//     SvgPicture imageFromAssetSvg =
//         SvgPicture.asset(assetNameSvg, fit: BoxFit.cover);

//     return Container(
//       constraints: BoxConstraints.expand(height: double.infinity),
//       child: imageFromAssetSvg,
//     );
//   }
// }

// #11
// class ScreenWidget extends StatelessWidget {
//   const ScreenWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light(),
//       // theme: ThemeData.dark(),
//       // theme: ThemeData(
//       //   brightness: Brightness.dark,
//       // ),
//       // theme: basicTheme(),
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(
//           Icons.menu,
//           color: Theme.of(context).iconTheme.color,
//         ),
//         title: Text(
//           'Custom Theme',
//           // style: Theme.of(context).textTheme.headline6,
//           style: Theme.of(context)
//               .textTheme
//               .headline6!
//               .copyWith(fontSize: LargeTextSize),
//         ),
//       ),
//       body: ListWidget(),
//       bottomNavigationBar: BAppBar(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         tooltip: 'Add',
//         child: Icon(
//           Icons.add,
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }

// class ListWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: EdgeInsets.only(top: 20, bottom: 5, right: 10, left: 10),
//       itemCount: 15,
//       itemBuilder: (BuildContext context, int index) {
//         return (index == 14)
//             ? Container(
//                 margin: EdgeInsets.fromLTRB(20, 20, 20, 40),
//                 child: ElevatedButton(
//                   child: Text("Load More"),
//                   onPressed: () {},
//                 )
//                 // child: Theme(
//                 //   data: Theme.of(context).copyWith(accentColor: Colors.yellow),
//                 //   child: ElevatedButton(
//                 //     child: Text("Load More"),
//                 //     onPressed: () {},
//                 //   ),
//                 // ),
//                 )
//             : Card(
//                 child: ListTile(
//                   trailing: Theme(
//                     data: Theme.of(context).copyWith(
//                       iconTheme: Theme.of(context).iconTheme.copyWith(
//                             color: Colors.grey,
//                           ),
//                     ),
//                     child: Icon(
//                       Icons.arrow_forward_ios,
//                     ),
//                   ),
//                   title: Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       'Header $index',
//                       style: Theme.of(context).textTheme.headline4,
//                     ),
//                   ),
//                   subtitle: Text(
//                     'Description text $index',
//                     // style: Theme.of(context).textTheme.bodyText1,
//                   ),
//                 ),
//               );
//       },
//     );
//   }
// }

// #12
// void main () => runApp(AnonymousRoutes());
// // void main () => runApp(NamedRoutes());

// #13
// void main () => runApp(NamedRoutesWithParams());
// // void main () => runApp(AnonymousRoutesWithParams());
// // void main () => runApp(OnGenerateRoute());