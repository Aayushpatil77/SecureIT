import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/src/base/local_admin/call_screen.dart';
import 'package:secure_it/utils/app_button.dart';
import 'package:sizer/sizer.dart';

class SendRequestScreen extends StatefulWidget {
  static String route = '/sendRequest';
  const SendRequestScreen({Key? key}) : super(key: key);

  @override
  State<SendRequestScreen> createState() => _SendRequestScreenState();
}

class _SendRequestScreenState extends State<SendRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.white,
      appBar: AppBar(
        backgroundColor: R.colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_rounded,
              color: R.colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 3.h,
              ),
              Center(
                child: Text(
                  'Send the help request \n to seniors',
                  textAlign: TextAlign.center,
                  style: R.textStyles
                      .poppins()
                      .copyWith(color: R.colors.black, fontSize: 18.sp),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Hello!',
                      textAlign: TextAlign.center,
                      style: R.textStyles
                          .poppins()
                          .copyWith(color: R.colors.black, fontSize: 11.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I am a ...... and my location is',
                    textAlign: TextAlign.center,
                    style: R.textStyles
                        .poppins()
                        .copyWith(color: R.colors.black, fontSize: 11.sp),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '.............. Plz inform to the senior..... for help me',
                    textAlign: TextAlign.center,
                    style: R.textStyles
                        .poppins()
                        .copyWith(color: R.colors.black, fontSize: 11.sp),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'to manage the suitation.',
                    textAlign: TextAlign.center,
                    style: R.textStyles
                        .poppins()
                        .copyWith(color: R.colors.black, fontSize: 11.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                  child: AppButton(
                buttonTitle: 'Send Requests',
                color: R.colors.themeColor,
                onTap: () {
                  Get.to(CallScreen());
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
