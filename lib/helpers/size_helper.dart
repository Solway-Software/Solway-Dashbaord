import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeHelper {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double _blockWidth = 0;
  static double _blockHeight = 0;

  static double textMultiplier = 0;
  static double imageSizeMultiplier = 0;
  static double heightMultiplier = 0;
  static double widthMultiplier = 0;

  static double paddingSideMultiplier = 0;
  static double paddingTopMultiplier = 0;

  void init(BoxConstraints constraints) {
    screenWidth = constraints.maxWidth;
    screenHeight = constraints.maxHeight;

    _blockWidth = screenWidth / 100;
    _blockHeight = screenHeight / 100;

    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;

    paddingSideMultiplier = screenWidth / 20;
    paddingTopMultiplier = screenWidth / 18;
  }
}
