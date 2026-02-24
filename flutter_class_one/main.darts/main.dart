import 'package:flutter/material.dart';
//
//
//BASICS
//
//

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  //VARIABLES : You can store different types of values in a variable.
  String name = "Okechukwu Daniel";
  int age = 23;
  double pi = 3.14;
  bool isBeginner = true;

  //OPERATORS
  //
  // 1 + 1 = 2 add
  // 1 - 1 =0  subtract
  // 2 * 2 =4  multiply
  // 4 / 2 = 2 divide
  // 9 % 4 = 1 remainder of division
  // == equal to
  // != not equal to
  // > greater than
  // < less than
  // >= greater than or equal to
  // <= less than or equal to
  // && || !

  /*
  //CONTROL FLOW
  */
  // 1. if
  //if (condition) {
  //do something
  //}else {
  //do something else
  //}

  //Tenary operator
  // 2. switch
  // 3. for
  // 4. while

  //FUNCTIONS AND METHODS

  //VOID METHODS
  // void sayHello() {
  //   print("Hello");
  // } void means this method does not return any value

  ///functions are methods that return a value
  // String sayHello() {
  //   return "Hello";
  // }

  //functions with parameters
  // String sayHello(String name) {
  //   return "Hello $name";
  // }

  ///DATA STRUCTURES
  ///1. List -> List<int>[1, 2, 3] -> A list is a collection of elements -> map,sort,reduce,filter
  ///2. Map -> Map<String, dynamic>{"name": "Okechukwu", "age": 23} -> A map is a collection of key-value pairs
  ///3. Set -> Set<int>{1, 2, 3} -> A set is a collection of unique elements

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text("Hello", style: TextStyle(fontSize: 30))),
      ),
    );
  }
}
