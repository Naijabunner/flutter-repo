import 'package:flutter/material.dart';
import 'package:flutter_class_one/pages/first_page.dart';
import 'package:flutter_class_one/pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text(
      //       "Flutter Class One",
      //       style: TextStyle(color: Colors.white),
      //     ),
      //     backgroundColor: Colors.blue[800],
      //     elevation: 0,
      //     leading: IconButton(
      //       icon: Icon(Icons.menu),
      //       color: Colors.white,
      //       onPressed: () {},
      //     ),
      //     actions: [
      //       IconButton(
      //         icon: Icon(Icons.logout),
      //         color: Colors.white,
      //         onPressed: () {},
      //       ),
      //     ],
      //   ),
      //   backgroundColor: Colors.blue[50],
      //   body: ListView(

      //     children: [
      //       // first container
      //       Container(height: 300, color: Colors.blue[600]),
      //       // second container
      //       Container(height: 200, color: Colors.blue[400]),
      //       // third container
      //       Expanded(
      //         child: Container(
      //           height: 100,
      //           color: Colors.blue[200],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/secondpage': (context) => SecondPage(),
      },
    );
  }
}
