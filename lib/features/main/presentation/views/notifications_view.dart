import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teamsync/core/theme/app_styles.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xff191D31),
        elevation: 0.1,
        title: Text(
          "Notifications",
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
        child: Container(
          height: 285.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
          decoration: BoxDecoration(
            color: Color(0xffFEFEFE),
            border: Border.all(color: Color(0xffE3E7EC)),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            children: [
              selectItemRow(text: "Assign", onChanged: (b) {}),
              Divider(),
              selectItemRow(text: "Comment", onChanged: (b) {}),
              Divider(),
              selectItemRow(text: "Follow", onChanged: (b) {}),
              Divider(),
              selectItemRow(text: "Notification", onChanged: (b) {}),
            ],
          ),
        ),
      ),
    );
  }

  Row selectItemRow({
    required String text,
    required void Function(bool)? onChanged,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppStyles.bodyRegularXL.copyWith(height: 1.h),
        ),
        Switch(
          value: true,
          onChanged: onChanged,
          activeColor: Color(0xff479C2B),
          thumbColor: WidgetStatePropertyAll(Colors.white),
          trackColor: WidgetStatePropertyAll(Color(0xff479C2B)),
          trackOutlineColor: WidgetStatePropertyAll(Color(0xff479C2B)),
          trackOutlineWidth: WidgetStatePropertyAll(15),
        )
      ],
    );
  }
}
