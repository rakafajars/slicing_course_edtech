import 'package:flutter/material.dart';
import 'package:slicing_ecourse/components/app_color.dart';

class LoginTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) validator;
  final String? hintText;
  final bool obscureText;
  final Widget? suffixIcon;

  const LoginTextFormField({
    Key? key,
    required this.controller,
    required this.validator,
    this.obscureText = false,
    this.hintText,
    this.suffixIcon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: AppColor.grey90,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: AppColor.grey90,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: AppColor.grey90,
            width: 1.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: AppColor.grey90,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
