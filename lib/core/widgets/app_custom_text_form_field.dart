import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teamsync/core/theme/app_styles.dart';

class AppCustomTextFormField extends StatelessWidget {
  const AppCustomTextFormField({
    this.name,
    this.prefixIcon,
    this.hintText,
    this.suffixIcon,
    this.isPassword = false,
    this.filled = true,
    super.key,
  });
  final String? name;
  final String? hintText;
  final IconData? prefixIcon;
  final suffixIcon;
  final bool isPassword;
  final bool filled;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (name != null) ...[
          Text(
            name!,
            style: AppStyles.bodyMediumL,
          ),
          SizedBox(height: 10.h),
        ],
        TextFormField(
          obscureText: isPassword,
          style: AppStyles.bodyRegularM,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIconColor: WidgetStateColor.resolveWith(
              (states) => states.contains(WidgetState.focused)
                  ? Color(0xfff15a24)
                  : Color(0xffA8AFC2),
            ),
            prefixIcon: Icon(
              prefixIcon,
            ),
            suffixIcon: suffixIcon,
            filled: filled,
            fillColor: Color(0xffFBFBFD),
          ),
        ),
      ],
    );
  }
}
