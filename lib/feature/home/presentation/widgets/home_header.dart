
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:technicaltask/core/utils/assets/app_assets.dart';
import 'package:technicaltask/core/utils/color/app_color.dart';
import 'package:technicaltask/core/utils/router/routes_name.dart';
import 'package:technicaltask/core/utils/style/app_style.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back,",
              style: AppStyle.text10.copyWith(fontSize: 12)
            ),
            ShaderMask(
      shaderCallback: (bounds) => AppColor.goldGradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child:  Text(
        "Asmar Ajlouni",
        style: AppStyle.text20
      ),
    )
          ],
        ),
    
        Container(
            decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColor.greyColor.withOpacity(.5),
          width: 2,
        ),
      ),
          child: GestureDetector(
            onTap: (){
              GoRouter.of(context).push(RoutesName.profile);
            },
            child: CircleAvatar(
              
              radius: 25,
              backgroundColor: AppColor.cardColor,
              child: Image.asset(AppAssets.person,width: 30,height: 30,),
            ),
          ),
        )
      ],
    );
  }
}


