import 'package:flutter/material.dart';

class ResultsHistory extends StatelessWidget {
  const ResultsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: double.infinity, height: 300),

        Positioned(top: 1, left: 2, child: HistoryButton()),
      ],
    );
  }
}

class HistoryButton extends StatelessWidget {
  const HistoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.history, color: Colors.grey.shade600),
      onPressed: () {},
    );
  }
}
