import 'package:flutter/material.dart';
import 'package:technicaltask/feature/profile/presentation/widgets/history_card.dart';

class ProfileHistorySection extends StatelessWidget {
  const ProfileHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return const HistoryCard();
      }, childCount: 4),
    );
  }
}
