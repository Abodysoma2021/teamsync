import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_styles.dart';

class SettingsSwitchWidget extends StatelessWidget {
  const SettingsSwitchWidget({
    super.key,
    required this.text,
    this.onChanged,
  });
  final String text;
  final Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppStyles.bodyRegularXL.copyWith(height: 1.h),
          ),
          Transform.scale(
            scale: 0.8.r,
            child: CupertinoSwitch(
              value: true,
              onChanged: onChanged,
              activeColor: context.theme.primaryColor,
              thumbColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
