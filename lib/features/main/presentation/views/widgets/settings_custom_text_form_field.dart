import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teamsync/core/theme/app_styles.dart';

SizedBox settingsCustomTextFormField({
  required String hint,
  required IconData prefixIcon,
  IconData? suffixIcon,
  TextEditingController? controller,
  
}) {
  return SizedBox(
    height: 52.h,
    child: TextFormField(
      controller: controller,
      style: AppStyles.bodyRegularM.copyWith(color: Color(0xff191D31)),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.bodyRegularM,
        prefixIcon: Icon(prefixIcon),
        prefixIconColor: WidgetStateColor.resolveWith(
          (states) => states.contains(WidgetState.focused)
              ? Color(0xff479C2B)
              : Color(0xff959CAF),
        ),
        suffixIcon: Icon(suffixIcon),
        suffixIconColor: WidgetStateColor.resolveWith(
          (states) => states.contains(WidgetState.focused)
              ? Color(0xff479C2B)
              : Color(0xff959CAF),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff479C2B),
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffF3F3F3),
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
    ),
  );
}
