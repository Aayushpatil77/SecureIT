import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/src/base/user/user_dashboard/widget/item_setting.dart';
import 'package:secure_it/utils/app_bar.dart';
import 'package:secure_it/utils/app_button.dart';
import 'package:secure_it/utils/heights_widths.dart';
import 'package:sizer/sizer.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: R.textStyles.poppins(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            h2,
            Container(
              width: 100.w,
              height: 50.h,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 4,
                    offset: Offset(3, 3),
                  ),
                ],
                color: const Color(0x54d9d9d9),
              ),
              child: Column(
                children: [
                  h1,
                  Item(
                    val: value1,
                    title: "Privacy Mode",
                    subTitle:
                        "After opening, the newly scanned and created content will not enter...",
                  ),
                  h1,
                  Item(
                    val: value1,
                    title: "Close after creation",
                    subTitle:
                        "After opening, the newly scanned and created content will not enter...",
                  ),
                  h1,
                  Item(
                    val: value1,
                    title: "Beep after success",
                    subTitle:
                        "After opening, the newly scanned and created content will not enter...",
                  ),
                ],
              ),
            ),
            h5,
          ],
        ),
      ),
    );
  }
}
