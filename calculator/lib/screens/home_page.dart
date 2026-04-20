import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/components/calculator.dart';
import 'package:todoapp/components/results_history.dart';
import 'package:todoapp/core/models/calculator_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorModel>(context);

    //text controller
    final _controller = calculator._controller;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(flex: 2, child: ResultsHistory()),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(calculator.getCurrentNumber.toString()),
                        TextField(
                          controller: TextEditingController(
                            text: calculator.getCurrentNumber.toString(),
                          ),
                          style: TextStyle(fontSize: 48),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(flex: 6, child: Calculator()),
            ],
          ),
        ),
      ),
    );
  }
}
