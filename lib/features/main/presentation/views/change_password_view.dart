import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/features/main/presentation/views/widgets/settings_custom_text_form_field.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xff191D31),
        elevation: 0.1,
        title: Text(
          "Change Password",
          style: AppStyles.bodySemiBoldL.copyWith(
            height: 1.3.h,
          ),
        ),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(child: Text("Option #1")),
                    PopupMenuItem(child: Text("Option #2")),
                    PopupMenuItem(child: Text("Option #3")),
                  ])
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Password",
              style: AppStyles.bodyMediumL.copyWith(
                color: Color(0xff191D31),
                height: 1.3.h,
              ),
            ),
            SizedBox(height: 10.h),
            settingsCustomTextFormField(
              hint: "Enter new password",
              prefixIcon: Icons.lock_outline,
              suffixIcon: Icons.remove_red_eye_outlined,
            ),
            SizedBox(height: 20.h),
            Text(
              "Confirm Password",
              style: AppStyles.bodyMediumL.copyWith(
                color: Color(0xff191D31),
                height: 1.3.h,
              ),
            ),
            SizedBox(height: 10.h),
            settingsCustomTextFormField(
              hint: "Confirm your new password",
              prefixIcon: Icons.lock_outline,
              suffixIcon: Icons.remove_red_eye_outlined,
            ),
            SizedBox(height: 392.h),
            Container(
              width: double.infinity,
              height: 56.h,
              decoration: BoxDecoration(
                color: Color(0xff479C2B),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Center(
                  child: Text(
                "Change Now",
                style: AppStyles.bodyMediumL.copyWith(
                  color: Colors.white,
                  height: 1.3.h,
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
