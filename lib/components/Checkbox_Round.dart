import 'package:flutter/material.dart';

Widget checkboxRound(bool isChecked, onPressed) {
  return CircleAvatar(
    radius: 12.0,
    backgroundColor: isChecked ? Colors.green : Colors.white,
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 2.0),
          borderRadius: BorderRadius.circular(15.0)),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Center(
          child: Icon(
            size: 15.0,
            Icons.check,
            color: isChecked ? Colors.white : Colors.green,
          ),
        ),
        onPressed: onPressed,
      ),
    ),
  );
}
