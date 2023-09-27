import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/Signup.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
      },
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
    );
  }
}
