import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:technicaltask/core/utils/color/app_color.dart';
import 'package:technicaltask/core/utils/router/routes_name.dart';
import 'package:technicaltask/core/utils/style/app_style.dart';
import 'package:technicaltask/feature/home/data/venue_model.dart';

class VenueCard extends StatelessWidget {
  final VenueModel venue;

  const VenueCard({super.key, required this.venue});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: venue.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            image: AssetImage(venue.image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              AppColor.primaryColor.withOpacity(0.4),
              BlendMode.darken,
            ),
          ),
        ),
        child: Stack(
          children: [
            if (venue.hasBlur)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                    child: const SizedBox(),
                  ),
                ),
              ),

            Positioned(
              left: 14,
              bottom: 18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    venue.type,
                    style: AppStyle.text10.copyWith(color: AppColor.white70),
                  ),
                  Text(
                    venue.name,
                    style: AppStyle.text16.copyWith(
                      color: AppColor.gradientStart,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              right: 14,
              bottom: 18,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor.withOpacity(.4),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white24),
                ),
                child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).push(RoutesName.foodDetail);
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.gradientStart,
                    size: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
