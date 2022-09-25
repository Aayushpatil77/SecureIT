import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/src/base/super_admin/audit_trail_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:sizer/sizer.dart';

class AuditTrailScreen extends StatefulWidget {
  const AuditTrailScreen({Key? key}) : super(key: key);

  @override
  State<AuditTrailScreen> createState() => _AuditTrailScreenState();
}

class _AuditTrailScreenState extends State<AuditTrailScreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Audit Trail',
                    style: R.textStyles
                        .poppins()
                        .copyWith(color: R.colors.black, fontSize: 13.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            AuditWidget(),
            Divider(
              height: 0,
              color: R.colors.grey,
            ),
            AuditWidget(),
            Divider(
              height: 0,
              color: R.colors.grey,
            ),
            AuditWidget(),
            Divider(
              height: 0,
              color: R.colors.grey,
            )
          ],
        ),
      ),
    );
  }

  Widget AuditWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(),
      padding: EdgeInsets.all(14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  // Get.to(UserProfile());
                },
                child: CircularProfileAvatar(
                  '',
                  child: Image.asset(
                    R.images.health_logo,
                    fit: BoxFit.cover,
                  ),
                  radius: 30,
                  borderColor: R.colors.white,
                  borderWidth: 1.2,
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Zawar Ali',
                    style: R.textStyles
                        .poppins()
                        .copyWith(color: R.colors.black, fontSize: 11.sp),
                  ),
                  Text(
                    'Local Admin',
                    style: R.textStyles.poppins().copyWith(
                        color: R.colors.black.withOpacity(.5), fontSize: 11.sp),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
