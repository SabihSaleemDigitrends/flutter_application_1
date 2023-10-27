import 'package:flutter/material.dart';

double responsiveWidth(BuildContext context, double widthPerctange) {
  double screenWidth = MediaQuery.of(context).size.width;
  double sectionWidth = screenWidth * widthPerctange;
  return sectionWidth;
}

double responsiveHeight(BuildContext context, double heightPerctange) {
  double screenHeight = MediaQuery.of(context).size.height;
  double sectionHeight = screenHeight * heightPerctange;
  return sectionHeight;
}
