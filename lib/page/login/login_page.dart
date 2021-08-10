import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slicing_ecourse/components/app_aset_image.dart';
import 'package:slicing_ecourse/components/app_color.dart';
import 'package:slicing_ecourse/components/app_style.dart';
import 'package:slicing_ecourse/page/login/widget/login_text_form_field.dart';
import 'package:slicing_ecourse/widget/button_global.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  bool _obstureText = true;

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  final List nameIcon = [
    AppAsetImage.facebookIcon,
    AppAsetImage.instagramIcon,
    AppAsetImage.googlePlusIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 32),
              Image.asset(
                AppAsetImage.loginIcon,
                width: 343,
                height: 253,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'Log in',
                style: AppTextStyle.rubickH4.copyWith(fontSize: 24),
              ),
              SizedBox(height: 8),
              Text(
                'Login with social networks',
                style: AppTextStyle.rubickRegular.copyWith(fontSize: 14),
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  nameIcon.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColor.blue,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        nameIcon[index],
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: LoginTextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email Tidak Boleh Kosong';
                          }
                        },
                        hintText: 'Email',
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: LoginTextFormField(
                        controller: _passwordController,
                        obscureText: _obstureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obstureText = !_obstureText;
                            });
                          },
                          child: _obstureText
                              ? Icon(
                                  Icons.visibility,
                                  size: 24,
                                  color: AppColor.grey,
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  size: 24,
                                  color: AppColor.grey,
                                ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password Tidak Boleh Kosong';
                          }
                        },
                        hintText: 'Password',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Forgot Password?',
                style: AppTextStyle.rubickH4.copyWith(
                  fontSize: 14,
                  color: AppColor.grey,
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 56,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ButtonGlobal(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  title: "Log in",
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Sign up',
                style: AppTextStyle.rubickH4.copyWith(
                  fontSize: 14,
                  color: AppColor.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
