import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:technicaltask/core/utils/color/app_color.dart';
import 'package:technicaltask/core/utils/style/app_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColor.primaryColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
      title: Text(
        title,
        style: AppStyle.text20,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }
}