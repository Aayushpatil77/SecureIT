import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'resources.dart';

class AppTextStyles {
  TextStyle poppins({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize ?? 11.sp,
      color: color ?? R.colors.white,
      fontWeight: fontWeight ?? FontWeight.normal,
      letterSpacing: letterSpacing ?? 0,
      height: height ?? 1,
    );
  }

  TextStyle montserrat({
    Color? color,
    double? fs,
    FontWeight? fw,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.poppins(
      fontSize: fs ?? 11.sp,
      color: color ?? R.colors.white,
      fontWeight: fw ?? FontWeight.normal,
      letterSpacing: letterSpacing ?? 0,
      height: height ?? 1,
    );
  }

  TextStyle baskerville({
    Color? color,
    double? fs,
    FontWeight? fw,
    double? letterSpacing,
    double? height,
  }) {
    return TextStyle(
      fontFamily: 'Baskerville',
      fontSize: fs ?? 10.sp,
      color: color ?? R.colors.black,
      fontWeight: fw ?? FontWeight.w400,
      letterSpacing: letterSpacing ?? 0,
      height: height ?? 1,
    );
  }

  TextStyle bergante({
    Color? color,
    double? fs,
    FontWeight? fw,
    double? letterSpacing,
    double? height,
  }) {
    return TextStyle(
      fontFamily: 'Bergante',
      fontSize: fs ?? 10.sp,
      color: color ?? R.colors.black,
      fontWeight: fw ?? FontWeight.w400,
      letterSpacing: letterSpacing ?? 0,
      height: height ?? 1,
    );
  }

  TextStyle jersey({
    Color? color,
    double? fs,
    FontWeight? fw,
    double? letterSpacing,
    double? height,
  }) {
    return TextStyle(
      fontFamily: 'Jersey',
      fontSize: fs ?? 10.sp,
      color: color ?? R.colors.black,
      fontWeight: fw ?? FontWeight.w400,
      letterSpacing: letterSpacing ?? 0,
      height: height ?? 1,
    );
  }

  TextStyle lemonMilk({
    Color? color,
    double? fs,
    FontWeight? fw,
    double? letterSpacing,
    double? height,
  }) {
    return TextStyle(
      fontFamily: 'LemonMilk',
      fontSize: fs ?? 10.sp,
      color: color ?? R.colors.black,
      fontWeight: fw ?? FontWeight.w400,
      letterSpacing: letterSpacing ?? 0,
      height: height ?? 1,
    );
  }
}
