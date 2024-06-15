import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/features/main/presentation/widgets/settings_switch_widget.dart';

class SecurityView extends StatelessWidget {
  const SecurityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xff191D31),
        elevation: 0.1,
        title: Text(
          "Security",
          style: AppStyles.bodySemiBoldL.copyWith(
            height: 1.3.h,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => const [
              PopupMenuItem(child: Text("Option #1")),
              PopupMenuItem(child: Text("Option #2")),
              PopupMenuItem(child: Text("Option #3")),
            ],
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
          decoration: BoxDecoration(
            color: const Color(0xffFEFEFE),
            border: Border.all(color: const Color(0xffE3E7EC)),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SettingsSwitchWidget(text: "Face ID", onChanged: (b) {}),
              const Divider(),
              SettingsSwitchWidget(
                  text: "Remember Password", onChanged: (b) {}),
              const Divider(),
              SettingsSwitchWidget(text: "Touch ID", onChanged: (b) {}),
            ],
          ),
        ),
      ),
    );
  }
}
