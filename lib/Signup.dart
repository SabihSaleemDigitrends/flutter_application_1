import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Round_Button.dart';
import 'package:flutter_application_1/components/Checkbox_Round.dart';
import 'package:flutter_application_1/components/Text_input_section.dart';
import 'package:flutter_application_1/components/Text_Gradient_Button.dart';

void main() => runApp(const SignUp());

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _nameKey = GlobalKey<FormState>();
  final _emailKey = GlobalKey<FormState>();
  final _addressKey = GlobalKey<FormState>();
  final _phoneKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormState>();
  bool isChecked = false;

  onPressed() {
    if (_formKey.currentState!.validate()) {
      print(_formKey.currentState!.validate());
      // Navigator.pushNamed(context, "/signup_process");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Pattern.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Image.asset(
                      'images/Logo.png',
                      width: 175,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text('Sign Up For Free',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 10,
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
                        textInputSection("Enter Your Name", "Name:", false,
                            GlobalKey(debugLabel: 'name'), context),
                        const SizedBox(
                          height: 10,
                        ),
                        textInputSection("Enter Your Email", "Email:", false,
                            GlobalKey(debugLabel: 'email'), context),
                        const SizedBox(
                          height: 10,
                        ),
                        textInputSection("Enter Your Address", "Address:",
                            false, GlobalKey(debugLabel: 'address'), context),
                        const SizedBox(
                          height: 10,
                        ),
                        textInputSection("Enter Your Phone No", "Phone No:",
                            false, GlobalKey(debugLabel: 'phone'), context),
                        const SizedBox(
                          height: 10,
                        ),
                        textInputSection("Enter Your Password", "Password:",
                            false, GlobalKey(debugLabel: 'password'), context),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: checkboxRound(isChecked, () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        }),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text("Keep Me Signed In",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: checkboxRound(isChecked, () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        }),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text("Email Me About Special Pricing",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Column(
                      children: [
                        roundButton(
                            "Create Account",
                            GlobalKey(debugLabel: 'signup'),
                            onPressed,
                            const LinearGradient(
                              colors: <Color>[
                                Color.fromARGB(255, 83, 232, 140),
                                Color.fromARGB(255, 21, 207, 120),
                                Color.fromARGB(255, 47, 225, 151),
                              ],
                            ),
                            const EdgeInsets.symmetric(horizontal: 25.0)),
                        textGradientButton("already have an account?",
                            GlobalKey(debugLabel: 'login'), () {
                          Navigator.pushNamed(context, "/login");
                        }),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
