import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'resources.dart';

class AppDecoration {
  InputDecoration fieldDecoration(
      {Widget? preIcon,
      required String hintText,
      Widget? suffixIcon,
      double? radius,
      double? horizontalPadding,
      double? verticalPadding,
      double? iconMinWidth,
      Color? fillColor}) {
    return InputDecoration(
      prefixIconConstraints: BoxConstraints(
        minWidth: iconMinWidth ?? 42,
      ),
      contentPadding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 16, vertical: verticalPadding ?? 17),
      fillColor: fillColor ?? R.colors.fieldFilled,
      hintText: hintText,
      prefixIcon: preIcon,
      suffixIcon: suffixIcon != null ? Container(child: suffixIcon) : null,
      hintStyle: R.textStyles.poppins(
          color: R.colors.fieldGreyText,
          fontSize: 11.sp,
          fontWeight: FontWeight.w300),
      isDense: true,
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
        borderSide: BorderSide(color: R.colors.fieldBorder),
      ),
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
        borderSide: BorderSide(color: R.colors.fieldBorder),
      ),
      disabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
        borderSide: BorderSide(color: R.colors.themeColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
        borderSide: BorderSide(color: R.colors.themeColor),
      ),
      errorBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
        borderSide: BorderSide(color: R.colors.red),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: R.colors.red),
      ),
      // filled: true,
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
        border: Border.all(color: R.colors.red),
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        color: R.colors.white);
  }
}
