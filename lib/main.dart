import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/test.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/Signup.dart';
import 'package:flutter_application_1/Splash.dart';
import 'package:flutter_application_1/OnBoarding.dart';
import 'package:flutter_application_1/UploadPreview.dart';
import 'package:flutter_application_1/Payment_Method.dart';
import 'package:flutter_application_1/Signup_Process.dart';
import 'package:flutter_application_1/providers/counter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Counter())],
      child: MaterialApp(
        routes: {
          '/splash': (context) => const Splash(),
          '/onBoarding': (context) => const OnBoarding(),
          '/login': (context) => const Login(),
          '/signup': (context) => const SignUp(),
          '/signup_process': (context) => const SignupProcess(),
          '/payment_method': (context) => const PaymentMethod(),
          '/upload_preview': (context) => const UploadPreview(),
          '/test': (context) => const Test(),
        },
        initialRoute: '/splash',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
