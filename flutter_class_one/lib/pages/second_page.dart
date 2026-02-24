//stl
import "package:flutter/material.dart";
import "package:flutter_class_one/pages/first_page.dart";

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstPage()),
            ),
          },
          child: Text("Go to First Page"),
        ),
      ),
    );
  }
}
