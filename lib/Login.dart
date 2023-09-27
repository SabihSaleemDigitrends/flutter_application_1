import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Round_Button.dart';
import 'package:flutter_application_1/components/Text_Input_Section.dart';

void main() => runApp(const Login());

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          backgroundColor: Colors.grey[800],
        ),
        body: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey[900],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: const AssetImage('images/avatar.png'),
                  radius: 100,
                  backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                  foregroundColor: Colors.grey[500],
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
                    roundButton("Login", GlobalKey(debugLabel: 'login'), () {}),
                    const SizedBox(
                      height: 20,
                    ),
                    roundButton("Signup", GlobalKey(debugLabel: 'signup'), () {
                      Navigator.pushNamed(context, "/signup");
                    })
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
