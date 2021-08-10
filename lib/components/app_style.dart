import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ecourse/components/app_color.dart';

class AppTextStyle {
  static TextStyle get rubickH2 => GoogleFonts.rubik(
        color: AppColor.black,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get rubickH4 => GoogleFonts.rubik(
        color: AppColor.black,
        fontSize: 24,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get rubickRegular => GoogleFonts.rubik(
        color: AppColor.grey,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      );
}
