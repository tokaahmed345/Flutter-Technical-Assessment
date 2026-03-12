import 'package:flutter/widgets.dart';
import 'package:technicaltask/core/utils/color/app_color.dart';

class AppStyle {
   static final TextStyle _baseStyle = TextStyle(
  fontFamily: "Satoshi",
  color: AppColor.whiteColor,
);
   static final text20 = _baseStyle.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 20,

  );

  static final text18 = _baseStyle.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 18,

  );
    static final text16 = _baseStyle.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 16,


  );
  static final text10 = _baseStyle.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 10,
    color: AppColor.greyColor,


  );
   static final text28 = _baseStyle.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 28,

  );
     static final text30 = _baseStyle.copyWith(
    color: AppColor.whiteColor,
                fontSize: 30,
                fontWeight: FontWeight.w700,
  );
  
}