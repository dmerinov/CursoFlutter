import "package:flutter/material.dart";

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.pink,
  Colors.red,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, "selected color must be greate than 0"),
        assert(selectedColor < colorList.length - 1,
            "selected color must be greate than 0");

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
