import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secure_it/resources/resources.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: R.colors.transparent,
    elevation: 0,
    leading: InkWell(
      onTap: () {
        Get.back();
      },
      child: Icon(
        Icons.arrow_back_rounded,
        color: R.colors.black,
      ),
    ),
  );
}
