import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/src/auth/view/login_view.dart';
import 'package:secure_it/utils/app_bar.dart';
import 'package:secure_it/utils/app_button.dart';
import 'package:secure_it/utils/heights_widths.dart';
import 'package:sizer/sizer.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isObscure = true;
  FocusNode numberFN = FocusNode();
  FocusNode otpFN = FocusNode();
  TextEditingController numberC = TextEditingController();
  TextEditingController otpC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.themeColor.withOpacity(.4),
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
                          "Register",
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
              // height: 70.h,
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
                  h3,
                  Text(
                    "Name",
                    style: R.textStyles.poppins(
                      color: R.colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  h1,
                  TextFormField(
                    decoration: R.decoration
                        .fieldDecoration(hintText: 'Enter your name'),
                  ),
                  h3,
                  Text(
                    "Status",
                    style: R.textStyles.poppins(
                      color: R.colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  h1,
                  TextFormField(
                    decoration: R.decoration.fieldDecoration(
                        hintText: 'Female, Kid, Senior Citizen'),
                  ),
                  h3,
                  Text(
                    "DOB",
                    style: R.textStyles.poppins(
                      color: R.colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  h1,
                  TextFormField(
                    decoration: R.decoration
                        .fieldDecoration(hintText: 'Enter your DOB'),
                  ),
                  h3,
                  Text(
                    "Address",
                    style: R.textStyles.poppins(
                      color: R.colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  h1,
                  TextFormField(
                    decoration: R.decoration
                        .fieldDecoration(hintText: 'Enter your address'),
                  ),
                  h3,
                  Text(
                    "Contact No",
                    style: R.textStyles.poppins(
                      color: R.colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  h1,
                  TextFormField(
                    decoration: R.decoration.fieldDecoration(
                        hintText: 'Enter your number (upto 4 digit)'),
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
                      Get.to(() => LoginView());
                    },
                    buttonTitle: 'Register Now',
                    color: R.colors.themeColor,
                  ),
                  h4,
                  InkWell(
                    onTap: () {
                      Get.to(() => LoginView());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: R.textStyles.poppins(
                            color: Color(0x72000000),
                            fontSize: 11.sp,
                          ),
                        ),
                        w1,
                        Text(
                          " Sign In",
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
