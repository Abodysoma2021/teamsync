import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teamsync/core/theme/app_styles.dart';

class AppCustomButton extends StatelessWidget {
  const AppCustomButton({
    required this.text,
    this.onPressed,
    super.key,
  });
  final String text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 56.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.r),
      ),
      color: const Color(0xfff15a24),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyles.bodyMediumL.copyWith(color: Colors.white),
      ),
    );
  }
}
