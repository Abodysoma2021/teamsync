import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/core/widgets/app_custom_button.dart';
import 'package:teamsync/core/widgets/app_custom_text_form_field.dart';

class AddTaskView extends GetView {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Task",
            style: AppStyles.bodySemiBoldL.copyWith(height: 1.3.h)),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppCustomTextFormField(
                name: "Title",
                hintText: "Task Title",
                prefixIcon: FontAwesome.sticky_note_o,
              ),
              SizedBox(height: 10.h),
              AppCustomTextFormField(
                name: "Description",
                hintText: "Task Description",
                prefixIcon: FontAwesome.align_left,
              ),
              SizedBox(height: 10.h),
              AppCustomTextFormField(
                name: "Status",
                hintText: "Choose Task Status",
                prefixIcon: FontAwesome.question_circle_o,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_down_outlined),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Pick Color",
                style: AppStyles.bodyMediumL,
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  ColorCircle(
                    color: Colors.blue,
                  ),
                  ColorCircle(
                    color: Colors.green,
                  ),
                  ColorCircle(
                    color: Colors.yellow,
                  ),
                  ColorCircle(
                    isSelected: true,
                    color: Colors.red,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "+ Add another",
                    style: AppStyles.bodyRegularS,
                  )
                ],
              ),
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Assign Member", style: AppStyles.bodySemiBoldXL),
                  Text(
                    "Add Member",
                    style: AppStyles.bodyMediumM
                        .copyWith(color: context.theme.primaryColor),
                  )
                ],
              ),
              SizedBox(height: 16.h),
              ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(bottom: 16.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(width: 12.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Monzer Osman",
                              style:
                                  AppStyles.bodyBoldM.copyWith(height: 1.3.h)),
                          SizedBox(height: 4.h),
                          Text(
                            "Backend Developer",
                            style: AppStyles.bodyMediumS.copyWith(
                              color: const Color(0xffA7AEC1),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        visualDensity:
                            const VisualDensity(horizontal: -4, vertical: -4),
                        onPressed: () {},
                        icon: Icon(
                          FontAwesome.trash_o,
                          color: const Color(0xffA7AEC1),
                        ),
                      ),
                    ],
                  ),
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
              SizedBox(height: 50.h),
              AppCustomButton(
                text: "Create Task",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorCircle extends StatelessWidget {
  const ColorCircle({
    super.key,
    this.color,
    this.isSelected = false,
  });
  final Color? color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.w,
      width: 32.w,
      margin: EdgeInsets.only(right: 8.w),
      decoration: BoxDecoration(
          color: color?.withOpacity(0.8),
          shape: BoxShape.circle,
          border:
              isSelected ? Border.all(color: Colors.red, width: 2.w) : null),
    );
  }
}
