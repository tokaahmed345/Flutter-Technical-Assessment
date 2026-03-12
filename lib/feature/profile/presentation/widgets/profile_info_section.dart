import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:technicaltask/core/utils/assets/app_assets.dart';
import 'package:technicaltask/core/utils/color/app_color.dart';
import 'package:technicaltask/core/utils/router/routes_name.dart';
import 'package:technicaltask/core/utils/style/app_style.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(AppAssets.profile),
        ),

        const SizedBox(width: 12),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Asmar Ajlouni", style: AppStyle.text16),

            Text(
              "+962 234 567 2349",
              style: AppStyle.text10.copyWith(
                fontSize: 12,
                color: AppColor.gradientStart,
              ),
            ),
          ],
        ),

        const Spacer(),

        InkWell(
          onTap: (){
         context.push(RoutesName.settings);
          },
          child: Text(
            "Edit",
            style: AppStyle.text10.copyWith(color: AppColor.gradientStart),
          ),
        ),
      ],
    );
  }
}
