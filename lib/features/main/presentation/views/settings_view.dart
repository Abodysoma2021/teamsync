import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:teamsync/core/config/app_routes.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/features/main/presentation/views/language_view.dart';
import 'package:teamsync/features/main/presentation/views/widgets/settings_menu_Item.dart';

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
        child: Container(
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
              settingsMenuItem(
                icon: FontAwesome.user_o,
                title: "Edit Profile",
                onTap: () => Get.toNamed(AppRoutes.editProfile),
              ),
              SizedBox(height: 16.h),
              settingsMenuItem(
                icon: Icons.lock_outline_rounded,
                title: "Change Password",
                onTap: () => Get.toNamed(AppRoutes.changePassword),
              ),
              SizedBox(height: 16.h),
              settingsMenuItem(
                icon: FontAwesome.bell_o,
                title: "Notifactions",
                onTap: () => Get.toNamed(AppRoutes.notificatios),
              ),
              SizedBox(height: 16.h),
              settingsMenuItem(
                icon: FontAwesome.shield,
                title: "Security",
                onTap: () => Get.toNamed(AppRoutes.security),
              ),
              SizedBox(height: 16.h),
              settingsMenuItem(
                icon: FontAwesome.globe,
                title: "Language",
                onTap: () => Get.toNamed(AppRoutes.language),
              ),
              SizedBox(height: 20.h),
              Text(
                "Preferences",
                style: AppStyles.bodySemiBoldXL.copyWith(
                  color: Color(0xff191D31),
                  height: 1.3.h,
                ),
              ),
              SizedBox(height: 20.h),
              settingsMenuItem(
                icon: Icons.shield_outlined,
                title: "Legal and Policies",
              ),
              SizedBox(height: 16.h),
              settingsMenuItem(
                icon: Icons.chat_outlined,
                title: "Help & Support",
              ),
              SizedBox(height: 16.h),
              settingsMenuItem(
                icon: Icons.logout_outlined,
                iconColor: Color(0xffE50000),
                title: "Logout",
                textColor: Color(0xffE50000),
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
