import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/components/calc_button.dart';
import 'package:todoapp/core/models/calculator_model.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorModel>(context);
    print(calculator.numbers);
    return SafeArea(
      child: Column(
        children: [
          /// Row 1
          Row(
            children: [
              CalcButton(
                text: "AC",
                color: Colors.grey,
                onPressed: () {
                  calculator.clear();
                },
              ),
              CalcButton(text: "+/-", color: Colors.grey, onPressed: () {}),
              CalcButton(text: "%", color: Colors.grey, onPressed: () {}),
              CalcButton(text: "÷", color: Colors.orange, onPressed: () {}),
            ],
          ),

          /// Row 2
          Row(
            children: [
              CalcButton(
                text: "7",
                onPressed: () {
                  calculator.setCurrentNumber(7);
                },
              ),
              CalcButton(
                text: "8",
                onPressed: () {
                  calculator.setCurrentNumber(8);
                },
              ),
              CalcButton(
                text: "9",
                onPressed: () {
                  calculator.setCurrentNumber(9);
                },
              ),
              CalcButton(
                text: "×",
                color: Colors.orange,
                onPressed: () {
                  calculator.addNumber("*");
                },
              ),
            ],
          ),

          /// Row 3
          Row(
            children: [
              CalcButton(
                text: "4",
                onPressed: () {
                  calculator.setCurrentNumber(4);
                },
              ),
              CalcButton(
                text: "5",
                onPressed: () {
                  calculator.setCurrentNumber(5);
                },
              ),
              CalcButton(
                text: "6",
                onPressed: () {
                  calculator.setCurrentNumber(6);
                },
              ),
              CalcButton(
                text: "-",
                color: Colors.orange,
                onPressed: () {
                  calculator.addNumber("-");
                },
              ),
            ],
          ),

          /// Row 4
          Row(
            children: [
              CalcButton(
                text: "1",
                onPressed: () {
                  calculator.setCurrentNumber(1);
                },
              ),
              CalcButton(
                text: "2",
                onPressed: () {
                  calculator.setCurrentNumber(2);
                },
              ),
              CalcButton(
                text: "3",
                onPressed: () {
                  calculator.setCurrentNumber(3);
                },
              ),
              CalcButton(
                text: "+",
                color: Colors.orange,
                onPressed: () {
                  calculator.addNumber("+");
                },
              ),
            ],
          ),

          /// Row 5
          Row(
            children: [
              CalcButton(
                text: "0",
                flex: 2,
                onPressed: () {
                  calculator.setCurrentNumber(0);
                },
              ), // wide button
              CalcButton(
                text: ".",
                onPressed: () {
                  calculator.setCurrentNumber(0);
                },
              ),
              CalcButton(
                text: "=",
                color: Colors.orange,
                onPressed: () {
                  calculator.calculate();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
