import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:technicaltask/core/utils/color/app_color.dart';
import 'package:technicaltask/core/utils/router/routes_name.dart';
import 'package:technicaltask/core/utils/style/app_style.dart';

class ProfileHeaderSection extends StatelessWidget {
  const ProfileHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Your Profile",
          style: AppStyle.text20.copyWith(
            color: AppColor.greyColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(RoutesName.settings);
          },
          icon: Icon(
            Icons.settings_outlined,
            color: AppColor.greyColor,
            size: 35,
          ),
        ),
      ],
    );
  }
}
