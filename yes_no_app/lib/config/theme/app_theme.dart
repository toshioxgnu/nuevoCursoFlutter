import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(0, 130, 6, 238);

const List<Color> _colorThemes = [
  _customColor,
  Colors.tealAccent,
  Colors.amber,
  Colors.black,
  Colors.red
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor < _colorThemes.length - 1);

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        brightness: Brightness.dark);
  }
}
