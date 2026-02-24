//stl
import "package:flutter/material.dart";
import "package:flutter_class_one/pages/counter_page.dart";
import "package:flutter_class_one/pages/second_page.dart";

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        backgroundColor: Colors.purple[500],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CounterPage()),
            ),
          },
          child: Text("Go to Second Page"),
        ),
      ),
    );
  }
}
