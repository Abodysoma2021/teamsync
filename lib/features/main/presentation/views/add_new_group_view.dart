import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/core/widgets/app_custom_text_form_field.dart';

class AddNewGroupView extends GetView {
  const AddNewGroupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Group",
          style: AppStyles.bodySemiBoldL.copyWith(
            height: 1.3.h,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff191D31),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          children: [
            const AppCustomTextFormField(
              name: "Title",
              prefixIcon: FontAwesome.folder_o,
              hintText: "Title Group",
            ),
            SizedBox(height: 10.h),
            AppCustomTextFormField(
              name: "Category",
              prefixIcon: Icons.grid_view_outlined,
              hintText: "Category Group",
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_down_outlined),
              ),
            ),
            SizedBox(height: 10.h),
            AppCustomTextFormField(
              name: "Icon",
              prefixIcon: FontAwesome.paint_brush,
              hintText: "Group Group",
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_down_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
