import 'package:flutter/material.dart';

Widget roundButton(
    String buttonText, GlobalKey key, onPressed, Gradient gradientColors, buttonPadding) {
  return ClipRRect(
    key: key,
    borderRadius: BorderRadius.circular(12),
    child: Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: gradientColors,
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: buttonPadding,
            textStyle:
                const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          onPressed: onPressed,
          child: Text(buttonText),
        ),
      ],
    ),
  );
}
