import 'package:flutter/material.dart';
import 'dart:math' as math;

class ColorService {
  Color backgroundColor = Colors.white;

  Color generateRandomColor() {
    final math.Random random = math.Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }
}
