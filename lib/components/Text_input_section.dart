import 'package:flutter/material.dart';

Widget textInputSection(String labelText, String title, bool obscureText,
    GlobalKey key, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double sectionWidth = screenWidth * 0.9; // Adjust the percentage as needed

  return Center(
    key: key,
    child: Container(
      width: sectionWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // Add border radius here
        border: Border.all(
          color: const Color.fromRGBO(244, 244, 244, 1.0),
        ),
      ),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey[500],
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(15), // Add border radius here
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromRGBO(244, 244, 244, 1.0),
            ),
            borderRadius: BorderRadius.circular(15), // Add border radius here
          ),
        ),
        validator: (value) {
          if (title == "Email:") {
            if (value == null || value.isEmpty) {
              return "Please enter your email";
            } else if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                .hasMatch(value)) {
              return "Invalid email address";
            }
          } else if (title == "Password:") {
            if (value == null || value.isEmpty) {
              return "Please enter your password";
            } else if (value.length < 6) {
              return "Password must be at least 6 characters long";
            }
          }
          return null; // Return null if validation passes
        },
        style: TextStyle(
          color: Colors.grey[500],
        ),
      ),
    ),
  );
}
