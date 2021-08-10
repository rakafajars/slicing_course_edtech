import 'package:flutter/material.dart';
import 'package:slicing_ecourse/components/app_color.dart';
import 'package:slicing_ecourse/components/app_style.dart';

class ButtonGlobal extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;

  const ButtonGlobal({
    Key? key,
    this.onTap,
    this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        title ?? "-",
        style: AppTextStyle.rubickH4.copyWith(
          fontSize: 16,
          color: AppColor.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: AppColor.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      ),
    );
  }
}
