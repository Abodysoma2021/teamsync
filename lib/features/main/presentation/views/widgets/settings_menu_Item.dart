import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teamsync/core/theme/app_styles.dart';

Container settingsMenuItem({
  required IconData preIcon,
  required String title,
  required IconData postIcon,
  Color? preIconColor,
  Color? textColor,
}) {
  return Container(
    height: 52.h,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      color: Colors.white,
    ),
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              preIcon,
              color: preIconColor,
            ),
            const SizedBox(width: 15),
            Text(
              title,
              textAlign: TextAlign.left,
              style: AppStyles.bodyMediumL.copyWith(
                color: textColor ?? Color(0xff191D31),
                height: 1.3.h,
              ),
            ),
          ],
        ),
        Icon(
          postIcon,
          color: Color(0xffA7AEC1),
        )
      ],
    ),
  );
}
