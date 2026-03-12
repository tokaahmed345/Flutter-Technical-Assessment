import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:technicaltask/core/utils/assets/app_assets.dart';
import 'package:technicaltask/core/utils/color/app_color.dart';
import 'package:technicaltask/core/utils/router/routes_name.dart';
import 'package:technicaltask/core/utils/style/app_style.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: AppColor.lightGrey,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(AppAssets.foodTwo, fit: BoxFit.cover),
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Nobiko Bistro", style: AppStyle.text16),

                          const SizedBox(height: 4),

                          Text(
                            "06 Jan, 2025",
                            style: AppStyle.text10.copyWith(
                              color: AppColor.greyColor,
                            ),
                          ),

                          const SizedBox(height: 16),

                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return AppColor.goldGradient.createShader(
                                const Rect.fromLTWH(0.0, 0.0, 50.0, 20.0),
                              );
                            },
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Text(
                                "125.32 JD • 230 Credits",
                                style: AppStyle.text10.copyWith(fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            gradient: AppColor.goldGradient,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            "325 Credits",
                            style: AppStyle.text10.copyWith(
                              color: AppColor.primaryColor,
                              fontSize: 12,
                            ),
                          ),
                        ),

                        const SizedBox(height: 5),

                        IconButton(
                          onPressed: (){
                            GoRouter.of(context).push(RoutesName.history);
                          },
                          icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: AppColor.greyColor,
                        )
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),

          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
