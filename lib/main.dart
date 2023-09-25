import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter layout demo'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // imageSection(),
                // titleSection(),
                // buttonSection,
                // textSection,
                // emailTextInputSection,
                // passwordTextInputSection,
                textInputSection,
                saveButtonSection,
              ],
            ),
          )),
    );
  }
}

Widget textInputSection = Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    textInputColumn(false, Icons.email, 'Please Enter Here', 'Email:', true),
    textInputColumn(
        true, Icons.password, 'Please Password Here', 'Password:', false),
  ],
);

Widget textInputColumn(
  bool obscureText,
  IconData iconValue,
  String hintTextValue,
  String label,
  bool isImage,
) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        Expanded(
          child: TextFormField(
            keyboardAppearance: Brightness.dark,
            obscureText: obscureText,
            decoration: InputDecoration(
              icon: Icon(iconValue),
              hintText: hintTextValue,
              labelText: label,
              iconColor: Colors.amber,
            ),
          ),
        ),
        SizedBox(
          width: 30,
          height: 30,
          child: Image.asset(
            isImage ? 'images/eyeOpened.png' : 'images/eyeClosed.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}

Widget saveButtonSection = Container(
  padding: const EdgeInsets.all(10),
  alignment: Alignment.center,
  child: TextButton(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
      padding: const EdgeInsets.all(16),
      textStyle: const TextStyle(fontSize: 20),
      backgroundColor: Colors.amber,
    ),
    child: const Text('Log in'),
    onPressed: () {},
  ),
);
