import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/src/landing/landing_view.dart';

import '../../utils/heights_widths.dart';

class SplashView extends StatefulWidget {
  static String route = '/';
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.to(const LandingView());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: R.colors.white,
              child: Image.asset(R.images.health_logo, scale: 5),
            ),
            Text(
              "SecureIT",
              style: R.textStyles.poppins(
                color: R.colors.themeColor,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
