import 'package:flutter/material.dart';
import 'package:slicing_ecourse/components/app_color.dart';
import 'package:slicing_ecourse/components/app_aset_image.dart';
import 'package:slicing_ecourse/components/app_style.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAsetImage.iconSplash,
            height: 264,
            width: 375,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16),
          Text("CodeFactory", style: AppTextStyle.rubickH2)
        ],
      ),
    );
  }
}
