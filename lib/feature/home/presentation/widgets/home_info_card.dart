import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:technicaltask/core/utils/assets/app_assets.dart';
import 'package:technicaltask/core/utils/color/app_color.dart';
import 'package:technicaltask/core/utils/router/routes_name.dart';
import 'package:technicaltask/core/utils/style/app_style.dart';
import 'package:technicaltask/feature/home/presentation/widgets/custom_food_image.dart';

class HomeInfoCard extends StatelessWidget {
  const HomeInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.lightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "AlterNow",
                    style: AppStyle.text10.copyWith(fontSize: 11),
                  ),
                  Text("Loyalty Points", style: AppStyle.text16),
                ],
              ),

              GestureDetector(
                onTap: (){
                           GoRouter.of(context).push(RoutesName.profile);
     
                },
                child: Image.asset(AppAssets.person, width: 30, height: 30)),
            ],
          ),

          const SizedBox(height: 10),

          ShaderMask(
            shaderCallback: (Rect bounds) {
              return AppColor.goldGradient.createShader(
                const Rect.fromLTWH(0.0, 0.0, 50.0, 20.0),
              );
            },
            child: Text("21,750", style: AppStyle.text30),
          ),

          const SizedBox(height: 5),

          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 30,
              width: double.infinity,
              color: AppColor.primaryColor,
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: 0.7,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: AppColor.goldGradient,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 14),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Total Orders ",
                  style: AppStyle.text10.copyWith(fontSize: 12),
                ),
                TextSpan(
                  text: "  24",
                  style: AppStyle.text10.copyWith(
                    color: AppColor.gold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          Row(
            children: [
              Row(
                children: const [
                  FoodImage(image: AppAssets.foodOne),
                  FoodImage(image: AppAssets.foodTwo),
                  FoodImage(image: AppAssets.foodThree),
                ],
              ),

              const Spacer(),

              InkWell(
                onTap: () {
          GoRouter.of(context).push(RoutesName.foodDetail);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Row(
                    children: const [
                      Text(
                        "More details",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_forward, size: 14, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
