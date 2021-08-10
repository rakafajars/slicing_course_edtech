import 'package:flutter/material.dart';
import 'package:slicing_ecourse/components/app_aset_image.dart';
import 'package:slicing_ecourse/components/app_color.dart';
import 'package:slicing_ecourse/components/app_style.dart';

class IntroductionScreenPage extends StatefulWidget {
  @override
  _IntroductionScreenPageState createState() => _IntroductionScreenPageState();
}

class _IntroductionScreenPageState extends State<IntroductionScreenPage> {
  PageController _pageController = PageController();

  int currentPage = 0;

  final List<IntroductionScreenModel> introductionScreenModel = [
    IntroductionScreenModel(
      image: AppAsetImage.learnAnytie,
      title: "Learn anytime\nand anywhere",
      subtitle:
          "Quarantine is the perfect time to spend your\nday learning something new, from anywhere!",
    ),
    IntroductionScreenModel(
      image: AppAsetImage.findACourse,
      title: "Find a course\nfor you",
      subtitle:
          "Quarantine is the perfect time to spend your\nday learning something new, from anywhere!",
    ),
    IntroductionScreenModel(
      image: AppAsetImage.improveYour,
      title: "Improve your skills\n",
      subtitle:
          "Quarantine is the perfect time to spend your\nday learning something new, from anywhere!",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _pageController,
          itemCount: introductionScreenModel.length,
          onPageChanged: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          itemBuilder: (context, int index) {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text(
                      "Skip",
                      style: AppTextStyle.rubickH4.copyWith(
                        fontSize: 14,
                        color: AppColor.grey,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 24),
                Image.asset(
                  introductionScreenModel[index].image!,
                  width: 375,
                  height: 264,
                ),
                SizedBox(height: 16),
                Text(
                  introductionScreenModel[index].title!,
                  style: AppTextStyle.rubickH4,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  introductionScreenModel[index].subtitle!,
                  style: AppTextStyle.rubickRegular,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    introductionScreenModel.length,
                    (index) {
                      return currentPage == index
                          ? Container(
                              width: 16,
                              height: 6,
                              margin: EdgeInsets.symmetric(
                                horizontal: 6.0,
                              ),
                              decoration: BoxDecoration(
                                color: AppColor.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            )
                          : Container(
                              width: 6,
                              height: 6,
                              margin: EdgeInsets.symmetric(
                                horizontal: 6.0,
                              ),
                              decoration: BoxDecoration(
                                color: AppColor.grey95,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            );
                    },
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  width: double.infinity,
                  height: 56,
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  child: ElevatedButton(
                    onPressed: () {
                      _pageController.animateToPage(
                        _pageController.page!.toInt() + 1,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text(
                      currentPage == 2 ? "Let's Start" : "Next",
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
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class IntroductionScreenModel {
  final String? image;
  final String? title;
  final String? subtitle;

  IntroductionScreenModel({
    this.image,
    this.title,
    this.subtitle,
  });
}
