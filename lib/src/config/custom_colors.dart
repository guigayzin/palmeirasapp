import 'package:flutter/material.dart';

Map<int, Color> swatchOpacity = {
  50: const Color.fromRGBO(28, 116, 76, .1),
  100: const Color.fromRGBO(28, 116, 76, .2),
  200: const Color.fromRGBO(28, 116, 76, .3),
  300: const Color.fromRGBO(28, 116, 76, .4),
  400: const Color.fromRGBO(28, 116, 76, .5),
  500: const Color.fromRGBO(28, 116, 76, .6),
  600: const Color.fromRGBO(28, 116, 76, .7),
  700: const Color.fromRGBO(28, 116, 76, .8),
  800: const Color.fromRGBO(28, 116, 76, .9),
  900: const Color.fromRGBO(28, 116, 76, 1),
};

abstract class customColors {
  static Color customConstrastColor = Colors.lightGreenAccent.shade700;
  static MaterialColor customSwatchColor =
      MaterialColor(0XFF1c744c, swatchOpacity);
}
