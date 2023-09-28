import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Round_Button.dart';
import 'package:flutter_application_1/components/Text_input_section.dart';

void main() => runApp(const SignUp());

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SignUp'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.grey[800],
        ),
        body: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey[900],
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  backgroundImage: const AssetImage('images/avatar.png'),
                  radius: 100,
                  backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                  foregroundColor: Colors.grey[500],
                ),
                const SizedBox(
                  height: 20,
                ),
                textInputSection(
                  "Enter Your Name",
                  "Name:",
                  false,
                  GlobalKey(debugLabel: 'name'),
                ),
                const SizedBox(
                  height: 20,
                ),
                textInputSection(
                  "Enter Your Email",
                  "Email:",
                  false,
                  GlobalKey(debugLabel: 'email'),
                ),
                const SizedBox(
                  height: 20,
                ),
                textInputSection(
                  "Enter Your Address",
                  "Address:",
                  false,
                  GlobalKey(debugLabel: 'address'),
                ),
                const SizedBox(
                  height: 20,
                ),
                textInputSection(
                  "Enter Your Phone No",
                  "Phone No:",
                  false,
                  GlobalKey(debugLabel: 'phone'),
                ),
                const SizedBox(
                  height: 20,
                ),
                textInputSection(
                  "Enter Your Password",
                  "Password:",
                  false,
                  GlobalKey(debugLabel: 'password'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    children: [
                      roundButton(
                          "Signup",
                          GlobalKey(debugLabel: 'signup'),
                          () {},
                          const LinearGradient(
                            colors: <Color>[
                              Color.fromARGB(255, 85, 86, 87),
                              Color.fromARGB(255, 122, 123, 123),
                              Color.fromARGB(255, 150, 151, 151),
                            ],
                          ),const EdgeInsets.symmetric(horizontal: 40.0)),
                      const SizedBox(
                        height: 20,
                      ),
                      roundButton("Login", GlobalKey(debugLabel: 'login'), () {
                        Navigator.pushNamed(context, "/login");
                      },
                          const LinearGradient(
                            colors: <Color>[
                              Color.fromARGB(255, 85, 86, 87),
                              Color.fromARGB(255, 122, 123, 123),
                              Color.fromARGB(255, 150, 151, 151),
                            ],
                          ),const EdgeInsets.symmetric(horizontal: 40.0))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
