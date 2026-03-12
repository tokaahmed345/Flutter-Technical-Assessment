import 'package:flutter/material.dart';
import 'package:technicaltask/core/utils/color/app_color.dart';
import 'package:technicaltask/core/utils/style/app_style.dart';
import 'package:technicaltask/feature/home/presentation/widgets/custom_home_grid_view.dart';
import 'package:technicaltask/feature/home/presentation/widgets/home_header.dart';
import 'package:technicaltask/feature/home/presentation/widgets/home_info_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: HomeHeader()),
        SliverToBoxAdapter(child: const SizedBox(height: 10)),
        SliverToBoxAdapter(child: HomeInfoCard()),
        SliverToBoxAdapter(child: const SizedBox(height: 25)),
        SliverToBoxAdapter(
          child: Text(
            "Venue Selection",
            style: AppStyle.text18.copyWith(
                color: AppColor.whiteColor.withOpacity(.7)),
          ),
        ),
        SliverToBoxAdapter(child: const SizedBox(height: 15)),
        CustomHomeGridView(),
        SliverToBoxAdapter(child: const SizedBox(height: 25)),
      ],
    );
  }
}
