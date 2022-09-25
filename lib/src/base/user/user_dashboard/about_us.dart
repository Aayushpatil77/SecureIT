import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/src/base/user/user_dashboard/widget/item_setting.dart';
import 'package:secure_it/utils/app_bar.dart';
import 'package:secure_it/utils/app_button.dart';
import 'package:secure_it/utils/heights_widths.dart';
import 'package:sizer/sizer.dart';

class AboutUSView extends StatefulWidget {
  const AboutUSView({super.key});

  @override
  State<AboutUSView> createState() => _AboutUSViewState();
}

class _AboutUSViewState extends State<AboutUSView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Settings",
                style: R.textStyles.poppins(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            h5,
            Text(
              "Help is our main goal.",
              textAlign: TextAlign.center,
              style: R.textStyles.poppins(
                color: Color(0xff095ea3),
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            h5,
            SizedBox(
              width: 395,
              child: Text(
                "Women's safety involves strategies, practices and policies which aim to reduce gender-based violence (or violence against women), including women's fear of crime. Women's safety involves safe spaces. Space is not neutral. Space which causes fear restricts movement and thus the community's use of the space",
                textAlign: TextAlign.center,
                style: R.textStyles.poppins(
                  color: Color(0x72000000),
                  fontSize: 16,
                ),
              ),
            ),
            Spacer(),
            AppButton(
              onTap: () {
                Get.back();
              },
              buttonTitle: 'Read More',
              color: R.colors.themeColor,
            ),
          ],
        ),
      ),
    );
  }
}
