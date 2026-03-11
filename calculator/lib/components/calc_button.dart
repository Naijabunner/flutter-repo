import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Color color;
  final int flex;

  const CalcButton({
    super.key,
    required this.text,
    this.color = Colors.grey,
    this.flex = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          child: Text(text, style: const TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
