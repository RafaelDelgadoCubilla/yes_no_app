import 'package:flutter/material.dart';

Color _customColor = const Color.fromARGB(255, 132, 68, 68);

List<Color> colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
  : assert(selectedColor>=0 && selectedColor<colorThemes.length,'El color ha de estar entre 0 y ${colorThemes.length-1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorThemes[1],
    );
  }
}
