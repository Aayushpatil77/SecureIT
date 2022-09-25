import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:sizer/sizer.dart';

class LocalAdminScreen extends StatefulWidget {
  static String route = '/localAdmin';
  const LocalAdminScreen({Key? key}) : super(key: key);

  @override
  State<LocalAdminScreen> createState() => _LocalAdminScreenState();
}

class _LocalAdminScreenState extends State<LocalAdminScreen> {
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
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Text(
                "We are in a mission to help the helpless",
                textAlign: TextAlign.left,
                style: R.textStyles
                    .poppins()
                    .copyWith(color: R.colors.darkText, fontSize: 18.sp),
              ),
              SizedBox(
                height: 3.h,
              ),
              localAdminWidget(),
              localAdminWidget(),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: Get.width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 13),
                        primary: R.colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () async {},
                    child: Text(
                      'Add into local admin',
                      style: R.textStyles
                          .poppins()
                          .copyWith(fontSize: 13.sp, color: R.colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget localAdminWidget() {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: R.colors.greyDivider,
      ),
      child: Row(
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
            width: 4.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sameer Yousaf',
                style: R.textStyles
                    .poppins()
                    .copyWith(color: R.colors.darkText, fontSize: 11.sp),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                'I am a social worker. I want to \n help the helpless and needy people.',
                style: R.textStyles
                    .poppins()
                    .copyWith(color: R.colors.blackText, fontSize: 11.sp),
              ),
            ],
          )
        ],
      ),
    );
  }
}
