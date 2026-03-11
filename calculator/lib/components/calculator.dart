import 'package:flutter/material.dart';
import 'package:todoapp/components/calc_button.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          /// Row 1
          Row(
            children: const [
              CalcButton(text: "AC", color: Colors.grey),
              CalcButton(text: "+/-", color: Colors.grey),
              CalcButton(text: "%", color: Colors.grey),
              CalcButton(text: "÷", color: Colors.orange),
            ],
          ),

          /// Row 2
          Row(
            children: const [
              CalcButton(text: "7"),
              CalcButton(text: "8"),
              CalcButton(text: "9"),
              CalcButton(text: "×", color: Colors.orange),
            ],
          ),

          /// Row 3
          Row(
            children: const [
              CalcButton(text: "4"),
              CalcButton(text: "5"),
              CalcButton(text: "6"),
              CalcButton(text: "-", color: Colors.orange),
            ],
          ),

          /// Row 4
          Row(
            children: const [
              CalcButton(text: "1"),
              CalcButton(text: "2"),
              CalcButton(text: "3"),
              CalcButton(text: "+", color: Colors.orange),
            ],
          ),

          /// Row 5
          Row(
            children: const [
              CalcButton(text: "0", flex: 2), // wide button
              CalcButton(text: "."),
              CalcButton(text: "=", color: Colors.orange),
            ],
          ),
        ],
      ),
    );
  }
}
