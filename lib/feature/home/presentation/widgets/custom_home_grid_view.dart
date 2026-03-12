import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:technicaltask/core/utils/constant/app_constant.dart';
import 'package:technicaltask/feature/home/presentation/widgets/venue_card.dart';

class CustomHomeGridView extends StatelessWidget {
  const CustomHomeGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverMasonryGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childCount: venues.length,
        itemBuilder: (context, index) {
          final venue = venues[index];
          return VenueCard(venue: venue);
        },
      ),
    );
  }
}