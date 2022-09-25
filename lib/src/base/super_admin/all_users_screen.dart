import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/src/base/super_admin/audit_trail_screen.dart';
import 'package:sizer/sizer.dart';

class AllUsersScreen extends StatefulWidget {
  static String route = '/allUsersScreen';
  const AllUsersScreen({Key? key}) : super(key: key);

  @override
  State<AllUsersScreen> createState() => _AllUsersScreenState();
}

class _AllUsersScreenState extends State<AllUsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.white,
      appBar: AppBar(
        backgroundColor: R.colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {},
            child: Image.asset(
              R.images.menu,
              scale: 4,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Users',
                      style: R.textStyles
                          .poppins()
                          .copyWith(color: R.colors.black, fontSize: 12.sp),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(AuditTrailScreen());
                      },
                      child: Text(
                        'See all',
                        style: R.textStyles.poppins().copyWith(
                            color: R.colors.greyText, fontSize: 10.sp),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              users(),
              users(),
              users(),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Local Admins',
                      style: R.textStyles
                          .poppins()
                          .copyWith(color: R.colors.black, fontSize: 12.sp),
                    ),
                    Text(
                      'See all',
                      style: R.textStyles
                          .poppins()
                          .copyWith(color: R.colors.greyText, fontSize: 10.sp),
                    )
                  ],
                ),
              ),
              localAdmins(),
              localAdmins(),
              localAdmins(),
            ],
          ),
        ),
      ),
    );
  }

  Widget users() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Color(0x3ad9d9d9),
        borderRadius: BorderRadius.circular(8),
      ),
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
                children: [
                  Text(
                    'Maryam M',
                    style: R.textStyles
                        .poppins()
                        .copyWith(color: R.colors.black, fontSize: 11.sp),
                  ),
                  Text(
                    'House Wife',
                    style: R.textStyles
                        .poppins()
                        .copyWith(color: R.colors.greyText, fontSize: 11.sp),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Image.asset(
                R.images.pin,
                height: 20,
                scale: 1.3,
              ),
              SizedBox(
                width: 2.w,
              ),
              Image.asset(
                R.images.phone,
                height: 20,
                scale: 1.3,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget localAdmins() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Color(0x3ad9d9d9),
        borderRadius: BorderRadius.circular(8),
      ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Zawar Ali',
                    style: R.textStyles
                        .poppins()
                        .copyWith(color: R.colors.black, fontSize: 11.sp),
                  ),
                  Text(
                    'Local Admin, Manage all conditions',
                    style: R.textStyles
                        .poppins()
                        .copyWith(color: R.colors.greyText, fontSize: 11.sp),
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
