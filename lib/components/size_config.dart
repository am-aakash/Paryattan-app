import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = const MediaQueryData();
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double blockWidth = 0.0;
  static double blockHeight = 0.0;
  static double blockHeightB = 0.0;
  static double blockHeightC = 0.0;
  static double screenRatio = 0.0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);

    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;
    blockHeightB =
        screenHeight / 100; // smaller blockHeight with increase in screenHeight
    blockHeightC =
        screenHeight / 101; // larger blockHeight with increase in screenHeight
    screenRatio = screenHeight / screenWidth;
  }
}
