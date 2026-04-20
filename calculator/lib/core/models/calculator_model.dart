import 'package:flutter/material.dart';

class CalculatorModel extends ChangeNotifier {
  final TextEditingController controller = TextEditingController();

  //Add text fn
  void addText(String text) {
    controller.text += text;
    notifyListeners();
  }

  //Remove text fn
  void removeText() {
    if (controller.text.isNotEmpty) {
      controller.text = controller.text.substring(0, controller.text.length - 1);
      notifyListeners();
    }
  }

  void clear() {
    controller.clear();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
