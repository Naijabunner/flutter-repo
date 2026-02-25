import 'package:flutter/material.dart';
import 'package:themes/pages/home_page.dart';
import 'package:themes/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
