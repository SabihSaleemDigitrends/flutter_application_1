import 'package:flutter/material.dart';

Widget swiperView(Map<String, String> item) {
  return Column(
    children: [
      const SizedBox(
        height: 80.0,
      ),
      item['imageUrl'] != null
          ? Image.asset(
              item['imageUrl']!,
            )
          : const SizedBox.shrink(),
      const SizedBox(
        height: 50.0,
      ),
      Text(
        item['titleHeader']!,
        style: const TextStyle(
          fontSize: 22.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
        textAlign: TextAlign.center,
      ),
      Text(
        item['titleSubHeader']!,
        style: const TextStyle(
          fontSize: 22.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 20.0,
      ),
      Text(
        item['descriptionHeader']!,
        style: const TextStyle(
          fontSize: 12.0,
          color: Colors.black,
          fontWeight: FontWeight.w400,
          letterSpacing: 2.0,
        ),
        textAlign: TextAlign.center,
      ),
      Text(
        item['descriptionSubHeader']!,
        style: const TextStyle(
          fontSize: 12.0,
          color: Colors.black,
          fontWeight: FontWeight.w400,
          letterSpacing: 2.0,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 50.0,
      ),
    ],
  );
}
