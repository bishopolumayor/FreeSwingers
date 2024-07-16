import 'package:get/get.dart';

class Dimensions {
  static double screenWidth = Get.context!.width;
  static double screenHeight = Get.context!.height;

  static double heightRatio(double divisor) {
    return screenHeight / (993 / divisor);
  }

  static double widthRatio(double divisor) {
    return screenWidth / (1920 / divisor);
  }

  static bool isWidestScreen(){
    return screenWidth >= 1400;
  }
  static bool isWideScreen(){
    return screenWidth >= 1000 && screenWidth < 1400;
  }
}