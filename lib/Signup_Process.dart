import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/utils.dart';
import 'package:flutter_application_1/components/Round_Button.dart';
import 'package:flutter_application_1/components/Text_input_section.dart';

void main() => runApp(const SignupProcess());

class SignupProcess extends StatelessWidget {
  const SignupProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Form(
            child: Container(
              padding: EdgeInsets.only(
                  top: responsiveHeight(context, 0.06),
                  bottom: responsiveHeight(context, 0.03),
                  right: responsiveWidth(context, 0.07),
                  left: responsiveWidth(context, 0.07)),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Pattern2.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        padding: EdgeInsets.zero,
                        icon: Image.asset(
                          "images/IconBack.png",
                          width: responsiveWidth(context, 0.15),
                          height: responsiveHeight(context, 0.1),
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: responsiveWidth(context, 0.07)),
                      SizedBox(
                        width: responsiveWidth(context, 0.6),
                        child: const Text('Fill in your bio to get started',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      SizedBox(height: responsiveWidth(context, 0.05)),
                      SizedBox(
                        width: responsiveWidth(context, 0.6),
                        child: const Text(
                            'This data will be displayed in your account profile for security',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 2.0)),
                      ),
                      SizedBox(height: responsiveWidth(context, 0.07)),
                      textInputSection("First Name", "First Name", false,
                          GlobalKey(debugLabel: 'first_name'), context),
                      SizedBox(height: responsiveWidth(context, 0.05)),
                      textInputSection("Last Name", "Last Name", false,
                          GlobalKey(debugLabel: 'last_name'), context),
                      SizedBox(height: responsiveWidth(context, 0.05)),
                      textInputSection("Mobile Number", "Mobile Number", false,
                          GlobalKey(debugLabel: 'mobile_number'), context),
                    ],
                  ),
                  Column(children: [
                    roundButton("Next", GlobalKey(debugLabel: 'next'), () {
                      Navigator.pushNamed(context, "/payment_method");
                    },
                        const LinearGradient(
                          colors: <Color>[
                            Color.fromARGB(255, 83, 232, 140),
                            Color.fromARGB(255, 21, 207, 120),
                            Color.fromARGB(255, 47, 225, 151),
                          ],
                        ),
                        EdgeInsets.symmetric(
                            horizontal: responsiveWidth(context, 0.11)))
                  ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
