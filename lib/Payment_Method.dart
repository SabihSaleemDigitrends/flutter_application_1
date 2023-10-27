import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/utils.dart';
import 'package:flutter_application_1/components/Round_Button.dart';

void main() => runApp(const PaymentMethod());

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  num isClickedId = 0;
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
                        child: const Text('Payment Method',
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
                      SizedBox(height: responsiveWidth(context, 0.15)),
                      buttonIconSection("images/paypal.png", context, () {
                        setState(() {
                          isClickedId = 1;
                        });
                      }, 1, isClickedId),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: responsiveWidth(context, 0.07)),
                        child:
                            buttonIconSection("images/visa.png", context, () {
                          setState(() {
                            isClickedId = 2;
                          });
                        }, 2, isClickedId),
                      ),
                      buttonIconSection("images/Payoneer.png", context, () {
                        setState(() {
                          isClickedId = 3;
                        });
                      }, 3, isClickedId),
                    ],
                  ),
                  Column(children: [
                    roundButton("Next", GlobalKey(debugLabel: 'next'), () {
                      Navigator.pushNamed(context, "/upload_preview");
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

Widget buttonIconSection(
    String name, context, onPressed, num id, num isClickedId) {
  return InkWell(
    borderRadius: BorderRadius.circular(responsiveHeight(context, 0.03)),
    onTap: onPressed,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(responsiveHeight(context, 0.03)),
        border: Border.all(
          color: isClickedId == id ? Colors.green.shade200 : Colors.transparent,
          width: 2.0,
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(vertical: responsiveWidth(context, 0.02)),
      child: Center(
        child: Image.asset(
          name,
          width: responsiveWidth(context, 0.25),
          height: responsiveHeight(context, 0.09),
        ),
      ),
    ),
  );
}
