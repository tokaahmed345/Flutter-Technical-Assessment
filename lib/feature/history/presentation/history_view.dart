import 'package:flutter/material.dart';
import 'package:technicaltask/core/utils/style/app_style.dart';
import 'package:technicaltask/core/utils/widgets/custom_appbar.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: CustomAppBar(title: "History Details",),

    body: Center(child: Text("History Details",style: AppStyle.text20,)),
    );
  }
  }
