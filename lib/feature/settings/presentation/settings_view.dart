import 'package:flutter/material.dart';
import 'package:technicaltask/core/utils/style/app_style.dart';
import 'package:technicaltask/core/utils/widgets/custom_appbar.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: CustomAppBar(title: "Settings",),
    body: Center(child: Text("Settings",style: AppStyle.text20,)),
    );
  }
}