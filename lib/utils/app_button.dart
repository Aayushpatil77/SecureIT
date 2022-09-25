import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../resources/resources.dart';

class AppButton extends StatefulWidget {
  final String buttonTitle;
  final GestureTapCallback onTap;
  final Color? color;
  final Color? textColor;
  final double? textSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final bool isBorder;

  const AppButton({
    Key? key,
    required this.buttonTitle,
    required this.onTap,
    this.color,
    this.textColor,
    this.textSize,
    this.letterSpacing,
    this.fontWeight,
    this.isBorder = false,
  }) : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 2.2.h),
        decoration: BoxDecoration(
          color: widget.color ?? R.colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: widget.isBorder ? R.colors.themeColor : R.colors.transparent,
          ),
        ),
        child: Text(widget.buttonTitle,
            style: R.textStyles.poppins().copyWith(
                  fontSize: widget.textSize ?? 13.sp,
                  fontWeight: widget.fontWeight ?? FontWeight.w500,
                  color: widget.textColor ?? R.colors.white,
                  letterSpacing: widget.letterSpacing ?? .5,
                )),
      ),
    );
  }
}

// class AppTextButton extends StatefulWidget {
//   final String buttonTitle;
//   final GestureTapCallback onTap;
//   final Color? color;
//   final Color? textColor;
//   final double? textSize;
//   final double? letterSpacing;
//   final FontWeight? fontWeight;

//   const AppTextButton(
//       {Key? key,
//       required this.buttonTitle,
//       required this.onTap,
//       this.color,
//       this.textColor,
//       this.textSize,
//       this.letterSpacing,
//       this.fontWeight})
//       : super(key: key);

//   @override
//   State<AppTextButton> createState() => _AppTextButtonState();
// }

// class _AppTextButtonState extends State<AppTextButton> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       borderRadius: BorderRadius.circular(25),
//       onTap: widget.onTap,
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12),
//         child: Text(getTranslated(context, widget.buttonTitle),
//             textAlign: TextAlign.center,
//             style: R.textStyle.courier(
//               fs: widget.textSize ?? 12.sp,
//               fw: widget.fontWeight ?? FontWeight.w400,
//               color: widget.textColor ?? R.colors.themeColor,
//               letterSpacing: widget.letterSpacing ?? .4,
//             )),
//       ),
//     );
//   }
// }

// /////////////////////// 3 rd button

class AppIconButton extends StatefulWidget {
  final String buttonTitle;
  final GestureTapCallback onTap;
  final IconData iconData;
  final Color? color;
  final Color? textColor;
  final double? textSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;

  const AppIconButton(
      {Key? key,
      required this.buttonTitle,
      required this.onTap,
      required this.iconData,
      this.color,
      this.textColor,
      this.textSize,
      this.letterSpacing,
      this.fontWeight})
      : super(key: key);

  @override
  State<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: widget.textColor ?? R.colors.black,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 20,
                width: 20,
                child: Icon(
                  widget.iconData,
                  color: widget.textColor ?? R.colors.black,
                  size: 14.sp,
                )),
            SizedBox(width: 3.w),
            Text(
              widget.buttonTitle,
              style: R.textStyles.poppins().copyWith(
                    fontSize: widget.textSize ?? 10.sp,
                    fontWeight: widget.fontWeight ?? FontWeight.w500,
                    color: widget.textColor ?? R.colors.black,
                    letterSpacing: widget.letterSpacing ?? .8,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
