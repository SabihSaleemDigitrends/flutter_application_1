import 'package:flutter/material.dart';

void main() => runApp(const Splash());

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Delay navigation to the Login screen by 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/onBoarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Pattern.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter),
          ),
        ),
        Center(
          child: SizedBox(
            width: 200,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Logo.png'),
                ),
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
