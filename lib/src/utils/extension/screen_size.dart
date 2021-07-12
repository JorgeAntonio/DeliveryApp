import 'package:flutter/material.dart';

//Extension publica

double screenWidth;
double screenHeight;

extension ScreenSize on double {
  double getScreenWidth({BuildContext context, double multiplier}) {
    var width = MediaQuery.of(context).size.width;
    if (multiplier != null) {
      width = width * multiplier;
    }
    return width;
  }

  double getScreenHeight({BuildContext context, double multiplier}) {
    var height = MediaQuery.of(context).size.width;
    if (multiplier != null) {
      height = height * multiplier;
    }
    return height;
  }
}
