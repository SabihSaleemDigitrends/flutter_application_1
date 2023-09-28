import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Swiper_View.dart';
import 'package:flutter_application_1/components/Round_Button.dart';

void main() => runApp(const OnBoarding());

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

var carousalItems = [
  {
    'titleHeader': "Find your Comfort",
    'titleSubHeader': "Food here",
    'descriptionHeader': "Here You Can find a chef or dish for",
    'descriptionSubHeader': "every taste and color. Enjoy!",
    'imageUrl': 'images/Illustration.png'
  },
  {
    'titleHeader': "Food Ninja is Where Your",
    'titleSubHeader': "Comfort Food Lives",
    'descriptionHeader': "Enjoy a fast and smooth food delivery at",
    'descriptionSubHeader': "your doorstep",
    'imageUrl': 'images/Illustration1.png'
  }
];

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;

  void nextButtonPressed() {
    if (currentIndex == carousalItems.length - 1) {
      Navigator.pushNamed(context, '/login');
    } else {
      setState(() {
        currentIndex = (currentIndex + 1) % carousalItems.length;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              swiperView(carousalItems[currentIndex]),
              Center(
                child: roundButton(
                    "Next",
                    GlobalKey(debugLabel: 'next'),
                    nextButtonPressed,
                    const LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 83, 232, 140),
                        Color.fromARGB(255, 21, 207, 120),
                        Color.fromARGB(255, 21, 190, 120),
                      ],
                    ),
                    const EdgeInsets.symmetric(horizontal: 40.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
