import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:teamsync/core/config/app_routes.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/core/widgets/app_custom_button.dart';
import 'package:teamsync/core/widgets/app_custom_text_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                  "Login Account",
                  style: AppStyles.bodyBoldXL,
                ),
                SizedBox(height: 5.h),
                Text(
                  "Please login with registered account",
                  style: AppStyles.bodyRegularS.copyWith(
                    color: Color(0xffA8AFC2),
                  ),
                ),
                SizedBox(height: 30.h),
                AppCustomTextFormField(
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
                    icon: Icon(
                      FontAwesome5.eye,
                      color: Color(0xffA8AFC2),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forget Password?",
                    style: AppStyles.bodyRegularM.copyWith(
                      color: Color(0xfff15a24),
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                AppCustomButton(
                  text: "Login",
                  onPressed: () {
                    Get.offNamed(AppRoutes.main);
                  },
                ),
                SizedBox(height: 20.h),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.offNamed(AppRoutes.signup);
                    },
                    child: Text.rich(
                      TextSpan(text: "Don't Have an account? ", children: [
                        TextSpan(
                          text: "Signup",
                          style: AppStyles.bodyBoldM.copyWith(
                            color: Color(0xfff15a24),
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
