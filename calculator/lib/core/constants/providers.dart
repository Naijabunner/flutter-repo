import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todoapp/themes/theme.provider.dart';
import 'package:todoapp/core/models/calculator_model.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => ThemeProvider()),
  ChangeNotifierProvider(create: (_) => CalculatorModel()),
];
