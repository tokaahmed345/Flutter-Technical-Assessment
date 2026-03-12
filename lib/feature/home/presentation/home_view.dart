import 'package:flutter/material.dart';
import 'package:technicaltask/feature/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
          child: HomeViewBody(),
        )),
    );
  }
}