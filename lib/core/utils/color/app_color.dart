import 'dart:ui';

import 'package:flutter/material.dart';

class AppColor {

  static const Color primaryColor = Color(0xFF000000);
  static const Color whiteColor = Color(0xFFFFFFFF);

  static const Color goldColor = Color(0xFFD4AF37);
  static const Color lightGold = Color(0xFFE7C98F);

  static const Color cardColor = Color(0xFF1C1C1E);
  static const Color greyColor = Color(0xFF8E8E93);
 static const Color gradientStart = Color(0xFFE4B679);
  static const Color gradientEnd = Color(0xFFFEE5C4);
  static const Color gold= Color(0xffEDC692);
    static const Color lightGrey= Color(0xff2C2C2C);
  static const LinearGradient goldGradient = LinearGradient(
    colors: [
      gradientStart,
      gradientEnd,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
   static const Color lightwhite= Color(0xffFFFFFFD1);
 static const Color  white70=  Colors.white70;
}