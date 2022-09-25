import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/src/auth/view/login_view.dart';
import 'package:secure_it/src/base/local_admin/local_admin.dart';
import 'package:secure_it/src/base/super_admin/all_users_screen.dart';
import 'package:secure_it/utils/app_bar.dart';
import 'package:secure_it/utils/app_button.dart';
import 'package:secure_it/utils/heights_widths.dart';
import 'package:sizer/sizer.dart';

class AuthView extends StatefulWidget {
  static String route = '/auth_view';

  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
        children: [
          h6,
          Image.asset(
            R.images.customer_service,
            height: 40.h,
          ),
          h4,
          AppButton(
            onTap: () {
              Get.to(() => const LoginView());
            },
            buttonTitle: 'Sign In as User',
            color: R.colors.themeColor,
          ),
          h4,
          AppButton(
            onTap: () {
              Get.to(() => const LocalAdminView());
            },
            buttonTitle: 'Sign In as Local Admin',
            color: R.colors.transparent,
            isBorder: true,
            textColor: R.colors.themeColor,
          ),
          h4,
          AppButton(
            onTap: () {
              Get.to(() => const AllUsersScreen());
            },
            buttonTitle: 'Sign In as Super Admin',
            color: R.colors.transparent,
            isBorder: true,
            textColor: R.colors.themeColor,
          ),
        ],
      ),
    );
  }
}
