import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    // Add 5 color
    Colors.pink,
    Colors.lime,
    Colors.green,
    Colors.orange,
    Colors.purple,
  ];
}

Stream<Color> getColors() async*{
  yield* Stream.periodic(
    const Duration(seconds: 1), (int t) {
      int index = t % ColorStream().colors.length;
      return ColorStream().colors[index];
    }
  );
}