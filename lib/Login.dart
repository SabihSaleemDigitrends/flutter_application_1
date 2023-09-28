import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Round_Button.dart';
import 'package:flutter_application_1/components/Text_input_section.dart';

void main() => runApp(const Login());

class Login extends StatelessWidget {
  const Login({super.key});

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
                height: 20,
              ),
              textInputSection(
                "Email",
                "Email:",
                false,
                GlobalKey(debugLabel: 'email'),
              ),
              const SizedBox(
                height: 20,
              ),
              textInputSection(
                "Password",
                "Password:",
                false,
                GlobalKey(debugLabel: 'password'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Forgot Password!',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(
                height: 20,
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
                            Color.fromARGB(255, 85, 86, 87),
                            Color.fromARGB(255, 122, 123, 123),
                            Color.fromARGB(255, 150, 151, 151),
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
                            Color.fromARGB(255, 85, 86, 87),
                            Color.fromARGB(255, 122, 123, 123),
                            Color.fromARGB(255, 150, 151, 151),
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
