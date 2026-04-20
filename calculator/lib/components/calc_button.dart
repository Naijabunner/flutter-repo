import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Color color;
  final int flex;
  final void Function()? onPressed;

  const CalcButton({
    super.key,
    required this.text,
    required this.onPressed,
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
          onPressed: onPressed,
          child: Text(text, style: const TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
