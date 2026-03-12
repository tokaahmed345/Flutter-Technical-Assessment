import 'package:flutter/material.dart';
import 'package:technicaltask/core/utils/style/app_style.dart';
import 'package:technicaltask/core/utils/widgets/custom_appbar.dart';
class FoodDetailsView extends StatelessWidget {
  const FoodDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Food Details"),

      body: Center(child: Text("Food Details", style: AppStyle.text20)),
    );
  }
}
