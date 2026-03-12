import 'package:flutter/material.dart';
import 'package:technicaltask/feature/profile/presentation/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),

          child: ProfileViewBody(),
        ),
      ),
    );
  }
}
