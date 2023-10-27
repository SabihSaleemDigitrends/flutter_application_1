import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Round_Button.dart';
import 'package:flutter_application_1/components/Text_input_section.dart';
import 'package:flutter_application_1/components/Text_Gradient_Button.dart';

void main() => runApp(const Login());

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';

  onLogin() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Pattern.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter),
          ),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Center(
                child: Image.asset(
                  'images/Logo.png',
                  width: 175,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              const Text('Login To Your Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 1.0,
                    offset: Offset(
                      1.0,
                      5.0,
                    ),
                  )
                ]),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    textInputSection("Email", "Email:", false,
                        GlobalKey(debugLabel: 'email'), context),
                    const SizedBox(
                      height: 20,
                    ),
                    textInputSection("Password", "Password:", false,
                        GlobalKey(debugLabel: 'password'), context),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Or Continue With',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 30.0),
                            color: const Color.fromARGB(255, 248, 247, 247),
                            child: Row(
                              children: [
                                Image.asset(
                                  "images/facebook.png",
                                  width: 25.0,
                                  height: 25.0,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text("Facebook",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 30.0),
                            color: const Color.fromARGB(255, 248, 247, 247),
                            child: Row(
                              children: [
                                Image.asset(
                                  "images/google.png",
                                  width: 25.0,
                                  height: 25.0,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text("Google",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              textGradientButton("Forgot Password!",
                  GlobalKey(debugLabel: 'forgot_password'), onLogin),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Column(
                  children: [
                    roundButton(
                        "Login",
                        GlobalKey(debugLabel: 'login'),
                        () {},
                        const LinearGradient(
                          colors: <Color>[
                            Color.fromARGB(255, 83, 232, 140),
                            Color.fromARGB(255, 21, 207, 120),
                            Color.fromARGB(255, 47, 225, 151),
                          ],
                        ),
                        const EdgeInsets.symmetric(horizontal: 40.0)),
                    const SizedBox(
                      height: 20,
                    ),
                    roundButton("Signup", GlobalKey(debugLabel: 'signup'), () {
                      Navigator.pushNamed(context, "/signup");
                    },
                        const LinearGradient(
                          colors: <Color>[
                            Color.fromARGB(255, 83, 232, 140),
                            Color.fromARGB(255, 21, 207, 120),
                            Color.fromARGB(255, 47, 225, 151),
                          ],
                        ),
                        const EdgeInsets.symmetric(horizontal: 40.0))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
