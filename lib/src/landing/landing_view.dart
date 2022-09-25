import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secure_it/src/auth/view/auth_view.dart';
import 'package:secure_it/utils/app_button.dart';
import 'package:secure_it/utils/heights_widths.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../resources/resources.dart';

class LandingView extends StatefulWidget {
  static String route = '/landing_view';

  const LandingView({Key? key}) : super(key: key);

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  int currentIndex = 0;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 11.sp),
        shrinkWrap: true,
        children: [
          h5,
          currentIndex == 2
              ? h2P5
              : Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.offAll(const AuthView());
                    },
                    child: Text(
                      'skip',
                      style: R.textStyles.poppins(
                        fontSize: 13.sp,
                        color: R.colors.yellow,
                        letterSpacing: 0.825,
                        fontWeight: FontWeight.w500,
                        height: 1.33,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
          h3,
          SizedBox(
            height: 40.h,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              controller: controller,
              children: [
                Image.asset(R.images.landing1),
                Image.asset(R.images.landing2),
                Image.asset(R.images.landing3),
              ],
            ),
          ),
          h7,
          Container(
            // height: 36.h,
            width: 100.w,
            padding: EdgeInsets.only(
                top: 4.h, bottom: currentIndex == 2 ? 2.h : 4.h),

            child: Column(
              children: [
                Text(
                  currentIndex == 0
                      ? heading1
                      : currentIndex == 1
                          ? heading2
                          : heading3,
                  textAlign: TextAlign.center,
                  style: R.textStyles.poppins(
                    color: R.colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                h1P5,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Text(
                    currentIndex == 0
                        ? para1
                        : currentIndex == 1
                            ? para2
                            : para3,
                    textAlign: TextAlign.center,
                    style: R.textStyles.poppins(
                      color: const Color(0x54000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                h4,
                AppButton(
                  color: R.colors.themeColor,
                  textColor: R.colors.white,
                  buttonTitle: 'Let’s Get Started',
                  onTap: () {
                    log(currentIndex.toString());
                    setState(() {
                      switch (currentIndex) {
                        case 0:
                          currentIndex = 1;
                          controller.jumpToPage(currentIndex);
                          break;
                        case 1:
                          currentIndex = 2;
                          controller.jumpToPage(currentIndex);

                          break;
                        case 2:
                          // currentIndex = 3;
                          // controller.jumpToPage(currentIndex);
                          Get.offAll(const AuthView());

                          break;
                      }
                    });
                  },
                ),
                h5,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotColor: R.colors.grey,
                        activeDotColor: R.colors.themeColor,
                        dotHeight: 8,
                        dotWidth: 8,
                        spacing: 2,
                        expansionFactor: 2.5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String heading1 = 'Feel Safe';
  String heading2 = 'Instant Help On the Go';
  String heading3 = 'Reliable Connection';

  String para1 =
      "Feeling safe is the ultimategoal of psychotherapy or any other means of self-exploration.";

  String para2 =
      "As well as the immediate help with temporary accomodations and costs to householders, Go-vernment needs to prudently manage those risks,";

  String para3 =
      "It provides reliable connection between user and doctors and hospital.";
}
