import 'package:flutter/material.dart';
import 'package:technicaltask/core/utils/color/app_color.dart';
import 'package:technicaltask/core/utils/style/app_style.dart';
import 'package:technicaltask/feature/profile/presentation/widgets/profile_header_section.dart';
import 'package:technicaltask/feature/profile/presentation/widgets/profile_history_section.dart';
import 'package:technicaltask/feature/profile/presentation/widgets/profile_info_section.dart';
class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              const ProfileHeaderSection(),

              const SizedBox(height: 25),

              const ProfileInfoSection(),

              const SizedBox(height: 40),

              Text(
                "Loyalty History",
                style: AppStyle.text16.copyWith(color: AppColor.greyColor),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),

        const ProfileHistorySection(),

        const SliverToBoxAdapter(child: SizedBox(height: 30)),
      ],
    );
  }
}
