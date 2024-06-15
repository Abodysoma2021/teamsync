import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:teamsync/core/config/app_routes.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/core/widgets/app_custom_button.dart';
import 'package:teamsync/features/main/presentation/widgets/settings_menu_item.dart';

class SettingsView extends GetView {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xff191D31),
        elevation: 0.1,
        title: Text(
          "Settings",
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
        child: Padding(
          padding: EdgeInsets.all(24.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "General",
                style: AppStyles.bodySemiBoldXL.copyWith(
                  color: Color(0xff191D31),
                  height: 1.3.h,
                ),
              ),
              SizedBox(height: 20.h),
              SettingsMenuItem(
                icon: FontAwesome.user_o,
                title: "Edit Profile",
                onTap: () => Get.toNamed(AppRoutes.editProfile),
              ),
              SizedBox(height: 16.h),
              SettingsMenuItem(
                icon: Icons.lock_outline_rounded,
                title: "Change Password",
                onTap: () => Get.toNamed(AppRoutes.changePassword),
              ),
              SizedBox(height: 16.h),
              SettingsMenuItem(
                icon: FontAwesome.bell_o,
                title: "Notifactions",
                onTap: () => Get.toNamed(AppRoutes.notificatios),
              ),
              SizedBox(height: 16.h),
              SettingsMenuItem(
                icon: FontAwesome.shield,
                title: "Security",
                onTap: () => Get.toNamed(AppRoutes.security),
              ),
              SizedBox(height: 16.h),
              SettingsMenuItem(
                icon: FontAwesome.globe,
                title: "Language",
                onTap: () => Get.toNamed(AppRoutes.language),
              ),
              SizedBox(height: 20.h),
              Text(
                "Preferences",
                style: AppStyles.bodySemiBoldXL.copyWith(
                  color: const Color(0xff191D31),
                  height: 1.3.h,
                ),
              ),
              SizedBox(height: 20.h),
              SettingsMenuItem(
                icon: Icons.shield_outlined,
                title: "Legal and Policies",
              ),
              SizedBox(height: 16.h),
              SettingsMenuItem(
                icon: Icons.chat_outlined,
                title: "Help & Support",
              ),
              SizedBox(height: 16.h),
              SettingsMenuItem(
                icon: Icons.logout_outlined,
                iconColor: Color(0xffE50000),
                title: "Logout",
                textColor: Color(0xffE50000),
                onTap: () {
                  Get.dialog(AlertDialog(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    content: Container(
                      padding: EdgeInsets.only(bottom: 20.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Material(
                              clipBehavior: Clip.hardEdge,
                              shape: CircleBorder(),
                              color: Colors.transparent,
                              child: IconButton(
                                visualDensity: const VisualDensity(
                                    horizontal: -3, vertical: -3),
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(
                                  Icons.close,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Center(
                            child: Text(
                              "Are you sure you want to logout?",
                              style: AppStyles.bodySemiBoldXL
                                  .copyWith(height: 1.3.h),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 40.h),
                          AppCustomButton(
                            text: "Cancel",
                            onPressed: () {},
                          ),
                          SizedBox(height: 20.h),
                          Center(
                            child: Text(
                              "Logout",
                              style: AppStyles.bodyBoldL
                                  .copyWith(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ));
                },
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
