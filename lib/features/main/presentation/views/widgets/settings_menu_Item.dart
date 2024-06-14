import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:teamsync/core/theme/app_styles.dart';

GestureDetector settingsMenuItem({
  required IconData icon,
  required String title,
  Color? iconColor,
  Color? textColor,
  void Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 52.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[100]!,
            spreadRadius: 10,
            blurRadius: 20.r,
          ),
        ],
        color: Colors.white,
      ),
      padding: EdgeInsets.all(14.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: iconColor,
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
            FontAwesome.arrow_right,
            color: Color(0xffA7AEC1),
          )
        ],
      ),
    ),
  );
}
