import 'package:flutter/material.dart';

abstract class GradientColor {
  static const Gradient singIn = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFF00F4),
      Color(0xFF00FFFF),
    ],
  );
}
