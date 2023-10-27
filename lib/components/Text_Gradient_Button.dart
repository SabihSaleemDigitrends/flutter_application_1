import 'package:flutter/material.dart';

Widget textGradientButton(
  String buttonText,
  GlobalKey key,
  VoidCallback onPressed,
) {
  return TextButton(
    key: key,
    onPressed: onPressed,
    child: ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          colors: [
            Color.fromARGB(255, 21, 207, 120),
            Color.fromARGB(255, 83, 232, 140),
            Color.fromARGB(255, 47, 225, 151),
          ],
        ).createShader(bounds);
      },
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
