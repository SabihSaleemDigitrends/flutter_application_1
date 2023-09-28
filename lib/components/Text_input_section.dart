import 'package:flutter/material.dart';

Widget textInputSection(
    String labelText,
    String title,
    bool obscureText,
    GlobalKey key,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      key: key,
      children: [
        Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: 270,
              child: TextField(
                obscureText: obscureText,
                decoration: InputDecoration(
                  labelText: labelText,
                  labelStyle: TextStyle(
                    color: Colors.grey[500],
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white70),
                  ),
                ),
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
