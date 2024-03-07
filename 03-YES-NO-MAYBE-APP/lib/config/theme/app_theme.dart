import 'package:flutter/material.dart';

const _customColor = Color(0xFF5c11d4);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.amber,
  Colors.green,
  Colors.red
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor > 0 && selectedColor <= _colorThemes.length - 1);

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
