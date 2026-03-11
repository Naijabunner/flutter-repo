import 'package:flutter/material.dart';
import 'package:todoapp/components/calculator.dart';
import 'package:todoapp/components/results_history.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(flex: 2, child: ResultsHistory()),
              Expanded(flex: 2, child: Container(color: Colors.blue)),
              Expanded(flex: 6, child: Calculator()),
            ],
          ),
        ),
      ),
    );
  }
}
