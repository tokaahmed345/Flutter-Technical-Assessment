import 'package:flutter/material.dart';
import 'package:technicaltask/core/utils/color/app_color.dart';

class FoodImage extends StatelessWidget {
  final String image;

  const FoodImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColor.primaryColor, width: 2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),

        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}
