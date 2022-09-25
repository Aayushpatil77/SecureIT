import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/utils/heights_widths.dart';
import 'package:sizer/sizer.dart';

class Item extends StatefulWidget {
  bool val;
  String? title;
  String? subTitle;
  Item({super.key, this.subTitle, this.title, this.val = false});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 60.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title ?? "",
                textAlign: TextAlign.center,
                style: R.textStyles.poppins(
                  color: R.colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              h0P4,
              Opacity(
                opacity: 0.40,
                child: Text(
                  widget.subTitle ?? "",
                  maxLines: 3,
                  style: R.textStyles.poppins(
                    color: Colors.black,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        CupertinoSwitch(
          value: widget.val,
          activeColor: R.colors.themeColor,
          onChanged: (value) {
            setState(() {
              widget.val = value;
            });
          },
        )
      ],
    );
  }
}
