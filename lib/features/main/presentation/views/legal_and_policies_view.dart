import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teamsync/core/theme/app_styles.dart';

class LegalAndPoliciesView extends StatelessWidget {
  const LegalAndPoliciesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xff191D31),
        elevation: 0.1,
        title: Text(
          "Help & Policies",
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
    );
  }
}