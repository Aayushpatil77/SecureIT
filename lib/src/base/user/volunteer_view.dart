import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/utils/app_bar.dart';
import 'package:secure_it/utils/app_button.dart';
import 'package:secure_it/utils/heights_widths.dart';
import 'package:sizer/sizer.dart';

class VolunteerView extends StatefulWidget {
  const VolunteerView({super.key});

  @override
  State<VolunteerView> createState() => _VolunteerViewState();
}

class _VolunteerViewState extends State<VolunteerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              width: 100.w,
              height: 34.h,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0x3ad9d9d9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 78,
                        height: 78,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(R.images.health_logo),
                      ),
                      w2,
                      Text(
                        "Sameer Yousaf",
                        style: R.textStyles.poppins(
                          color: R.colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  h3,
                  Text(
                    "I am a social worker. I want to help the helpless and needy people.",
                    textAlign: TextAlign.center,
                    style: R.textStyles.poppins(
                      color: Color(0xbf000000),
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),
            h5,
            AppButton(
              onTap: () {
                Get.back();
              },
              buttonTitle: 'Apply for Volunteer',
              color: R.colors.themeColor,
            ),
            h5,
            AppButton(
              onTap: () {
                Get.back();
              },
              buttonTitle: 'Upload Photo',
              isBorder: true,
              textColor: R.colors.themeColor,
            ),
          ],
        ),
      ),
    );
  }
}
