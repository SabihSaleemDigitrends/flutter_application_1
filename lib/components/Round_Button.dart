import 'package:flutter/material.dart';

Widget roundButton(String buttonText, GlobalKey key, onPressed) {
  return ClipRRect(
    key: key,
    borderRadius: BorderRadius.circular(4),
    child: Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color.fromARGB(255, 85, 86, 87),
                  Color.fromARGB(255, 122, 123, 123),
                  Color.fromARGB(255, 150, 151, 151),
                ],
              ),
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(16.0),
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: onPressed,
          child: Text(buttonText),
        ),
      ],
    ),
  );
}
