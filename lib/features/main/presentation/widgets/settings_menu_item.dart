import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teamsync/core/theme/app_styles.dart';

class SettingsMenuItem extends StatelessWidget {
  const SettingsMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.iconColor,
    this.textColor,
    this.onTap,
  });
  final IconData icon;
  final String title;
  final Color? iconColor;
  final Color? textColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Material(
        clipBehavior: Clip.hardEdge,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 52.h,
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
                        color: textColor ?? const Color(0xff191D31),
                        height: 1.3.h,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xffA7AEC1),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// String name = "ahmed";

