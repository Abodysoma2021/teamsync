import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/features/main/presentation/views/widgets/settings_menu_Item.dart';

class SettingsView extends GetView {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Settings",
          style: AppStyles.bodySemiBoldL.copyWith(
            color: Color(0xff191D31),
            height: 1.3.h,
          ),
        ),
        actions: [
          PopupMenuButton(
              iconColor: Colors.black,
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
          color: Color(0xffFBFBFD),
          padding: EdgeInsets.all(24),
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
                preIcon: FontAwesome.user_o,
                title: "Edit Profile",
                postIcon: FontAwesome.arrow_right,
              ),
              SizedBox(height: 16.h),
              settingsMenuItem(
                preIcon: Icons.lock_outline_rounded,
                title: "Change Password",
                postIcon: FontAwesome.arrow_right,
              ),
              SizedBox(height: 16.h),
              settingsMenuItem(
                preIcon: FontAwesome.bell_o,
                title: "Notifactions",
                postIcon: FontAwesome.arrow_right,
              ),
              SizedBox(height: 16.h),
              settingsMenuItem(
                preIcon: FontAwesome.shield,
                title: "Security",
                postIcon: FontAwesome.arrow_right,
              ),
              SizedBox(height: 16.h),
              settingsMenuItem(
                preIcon: FontAwesome.globe,
                title: "Langauge",
                postIcon: FontAwesome.arrow_right,
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
                preIcon: Icons.shield_outlined,
                title: "Legal and Policies",
                postIcon: FontAwesome.arrow_right,
              ),
              SizedBox(height: 16.h),
              settingsMenuItem(
                preIcon: Icons.chat_outlined,
                title: "Help & Support",
                postIcon: FontAwesome.arrow_right,
              ),
              SizedBox(height: 16.h),
              settingsMenuItem(
                preIcon: Icons.logout_outlined,
                preIconColor: Color(0xffE50000),
                title: "Logout",
                textColor: Color(0xffE50000),
                postIcon: FontAwesome.arrow_right,
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
