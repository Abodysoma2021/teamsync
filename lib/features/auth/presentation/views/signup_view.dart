import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:teamsync/core/config/app_routes.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/core/widgets/app_custom_button.dart';
import 'package:teamsync/core/widgets/app_custom_text_form_field.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                Text(
                  "Create Account",
                  style: AppStyles.bodyBoldXL,
                ),
                SizedBox(height: 5.h),
                Text(
                  "Start learing with create your account",
                  style: AppStyles.bodyRegularS.copyWith(
                    color: const Color(0xffA8AFC2),
                  ),
                ),
                SizedBox(height: 30.h),
                const AppCustomTextFormField(
                  name: "Username",
                  prefixIcon: FontAwesome.user_o,
                  hintText: "Create your username",
                ),
                SizedBox(height: 20.h),
                const AppCustomTextFormField(
                  name: "Email or Phone Number",
                  prefixIcon: FontAwesome.envelope_o,
                  hintText: "Enter your email or phone number",
                ),
                SizedBox(height: 20.h),
                AppCustomTextFormField(
                  isPassword: true,
                  name: "Password",
                  prefixIcon: MaterialIcons.lock_outline,
                  hintText: "Create your password",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesome5.eye,
                      color: Color(0xffA8AFC2),
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                AppCustomButton(
                  text: "Create Account",
                  onPressed: () {
                    Get.offNamed(AppRoutes.main);
                  },
                ),
                SizedBox(height: 20.h),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.offNamed(AppRoutes.login);
                    },
                    child: Text.rich(
                      TextSpan(text: "Already Have an account? ", children: [
                        TextSpan(
                          text: "Login",
                          style: AppStyles.bodyBoldM.copyWith(
                            color: const Color(0xfff15a24),
                          ),
                        ),
                      ]),
                      style: AppStyles.bodyRegularM,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
