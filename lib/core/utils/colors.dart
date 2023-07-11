import 'package:flutter/material.dart';

class AppColors {
  static Color scaffoldBackgroundColor = const Color(0xff0E2033);
  static Color scaffoldSecondary = const Color(0xff213345);
  static Color grey = const Color(0xff8B8B8B);
  static Color active = const Color(0xFF60FFB5);
  static MaterialColor gold = MaterialColor(0xffEAB96B, _goldColor);
}

Map<int, Color> _goldColor = {
  50: const Color(0xffEAB96B).withOpacity(0.1),
  100: const Color(0xffEAB96B).withOpacity(0.2),
  200: const Color(0xffEAB96B).withOpacity(0.3),
  300: const Color(0xffEAB96B).withOpacity(0.4),
  400: const Color(0xffEAB96B).withOpacity(0.5),
  500: const Color(0xffEAB96B).withOpacity(0.6),
  600: const Color(0xffEAB96B).withOpacity(0.7),
  700: const Color(0xffEAB96B).withOpacity(0.8),
  800: const Color(0xffEAB96B).withOpacity(0.9),
  900: const Color(0xffEAB96B),
};