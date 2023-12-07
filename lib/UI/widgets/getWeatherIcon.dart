import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

Widget getWeatherIcon(int code) {
  switch (code) {
    case >= 200 && < 300 :
      return Image.asset(
          'assets/images/1.png',
        height: 100,
        width: 100,
      );
    case >= 300 && < 400 :
      return Image.asset(
          'assets/images/2.png', height: 100,
        width: 100,
      );
    case >= 500 && < 600 :
      return Image.asset(
          'assets/images/3.png', height: 100,
        width: 100,
      );
    case >= 600 && < 700 :
      return Image.asset(
          'assets/images/4.png', height: 100,
        width: 100,
      );
    case >= 700 && < 800 :
      return Image.asset(
          'assets/images/5.png', height: 100,
        width: 100,
      );
    case == 800 :
      return SvgPicture.asset(
    "assets/images/Vector.svg",
  );
    case > 800 && <= 804 :
      return Image.asset(
          'assets/images/7.png', height: 100,
        width: 100,
      );
    default:
      return Image.asset(
          'assets/images/7.png', height: 100,
        width: 100,
      );
  }
}