import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/src/auth/view/SignUpView.dart';
import 'package:secure_it/src/base/user/user_dashboard/user_dashboard.dart';
import 'package:secure_it/utils/app_button.dart';
import 'package:secure_it/utils/heights_widths.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isObscure = true;
  FocusNode numberFN = FocusNode();
  FocusNode otpFN = FocusNode();
  TextEditingController numberC = TextEditingController();
  TextEditingController otpC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.themeColor.withOpacity(.8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: R.colors.themeColor.withOpacity(.4),
              ),
              width: 100.w,
              height: 40.h,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        R.images.circle,
                        scale: 5,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        R.images.half_circle,
                        scale: 5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, left: 22, bottom: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: R.colors.black,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Sign In",
                          textAlign: TextAlign.start,
                          style: R.textStyles.poppins(
                            color: R.colors.white,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60.h,
              width: 100.w,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: R.colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Phone No",
                    style: R.textStyles.poppins(
                      color: R.colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  h1,
                  TextFormField(
                    decoration: R.decoration
                        .fieldDecoration(hintText: 'Enter your phone number'),
                  ),
                  h3,
                  Text(
                    "OTP",
                    style: R.textStyles.poppins(
                      color: R.colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  h1,
                  TextFormField(
                    decoration: R.decoration.fieldDecoration(
                      hintText: 'Enter your OTP',
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        child: Icon(
                          isObscure
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          // size: 20.sp,
                          color: R.colors.fieldGrey,
                        ),
                      ),
                    ),
                  ),
                  h3,
                  h4,
                  AppButton(
                    onTap: () {
                      Get.to(() => const UserDashboard());
                    },
                    buttonTitle: 'Sign In',
                    color: R.colors.themeColor,
                  ),
                  h4,
                  InkWell(
                    onTap: () {
                      Get.to(() => SignUpView());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account yet?",
                          style: R.textStyles.poppins(
                            color: Color(0x72000000),
                            fontSize: 11.sp,
                          ),
                        ),
                        w1,
                        Text(
                          " Register here",
                          style: R.textStyles.poppins(
                            color: R.colors.themeColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
