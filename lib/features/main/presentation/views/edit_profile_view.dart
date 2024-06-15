import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/core/widgets/app_custom_button.dart';
import 'package:teamsync/core/widgets/app_custom_text_form_field.dart';

class EditProfileView extends GetView {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xff191D31),
        elevation: 0.1,
        title: Text(
          "Edit Profile",
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(24.w, 0, 24.w, 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 19.h),
              Container(
                width: double.infinity,
                height: 100.h,
                child: Image.asset("assets/images/general/profile.png"),
              ),
              SizedBox(height: 30.h),
              AppCustomTextFormField(
                name: "Username",
                prefixIcon: FontAwesome.user_o,
                hintText: "Enter User Name",
              ),
              SizedBox(height: 20.h),
              AppCustomTextFormField(
                name: "Email",
                prefixIcon: FontAwesome.envelope_o,
                hintText: "Email",
              ),
              SizedBox(height: 20.h),
              Text(
                "Account Linked With",
                style: AppStyles.bodyMediumL.copyWith(
                  color: Color(0xff191D31),
                  height: 1.3.h,
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 52.h,
                padding: EdgeInsets.all(14.r),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffF3F3F3)),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child: Image.asset(
                              "assets/images/general/google-icon.png"),
                        ),
                        SizedBox(width: 14.w),
                        Text(
                          "Google",
                          style: AppStyles.bodyRegularM.copyWith(
                            color: Color(0xff191D31),
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.link_rounded,
                      color: Color(0xffA7AEC1),
                    )
                  ],
                ),
              ),
              SizedBox(height: 163.h),
              AppCustomButton(
                text: "Save Changes",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
