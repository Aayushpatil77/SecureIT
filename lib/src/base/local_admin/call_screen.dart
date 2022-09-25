import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:sizer/sizer.dart';

class CallScreen extends StatefulWidget {
  static String route = '/callScreen';
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
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
        child: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
            Center(
              child: Text(
                "Emergency Help \n Needed?",
                textAlign: TextAlign.center,
                style: R.textStyles
                    .poppins()
                    .copyWith(color: R.colors.blackText, fontSize: 18.sp),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Center(
              child: Text(
                "Just hold the button to call",
                textAlign: TextAlign.center,
                style: R.textStyles.poppins().copyWith(
                    color: R.colors.black.withOpacity(.5), fontSize: 10.sp),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Image.asset(
              R.images.red_button,
              height: 100,
              scale: 1,
            ),
            SizedBox(
              height: 5.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: Get.width * 0.5,
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: R.colors.black.withOpacity(.4)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "He/She have \n an accident",
                              textAlign: TextAlign.center,
                              style: R.textStyles.poppins().copyWith(
                                  color: R.colors.black.withOpacity(.5),
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              size: 25,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width * 0.5,
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: R.colors.black.withOpacity(.4)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "He/She have \n an accident",
                              textAlign: TextAlign.center,
                              style: R.textStyles.poppins().copyWith(
                                  color: R.colors.blackText, fontSize: 12.sp),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              size: 25,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width * 0.5,
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: R.colors.black.withOpacity(.5)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "He/She have \n an accident",
                              textAlign: TextAlign.center,
                              style: R.textStyles.poppins().copyWith(
                                  color: R.colors.black.withOpacity(.5),
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              size: 25,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
