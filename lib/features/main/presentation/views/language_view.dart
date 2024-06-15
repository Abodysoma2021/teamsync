import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/core/widgets/app_custom_text_form_field.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xff191D31),
        elevation: 0.1,
        title: Text(
          "Language",
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
        child: Column(
          children: [
            AppCustomTextFormField(
              hintText: "Search language",
              prefixIcon: Icons.search_outlined,
            ),
            SizedBox(height: 30.r),
            LanguageItemWidget(
              imageUrl: "assets/images/general/flags/uk.png",
              title: "English",
              isSelected: true,
            ),
            SizedBox(height: 10.r),
            LanguageItemWidget(
              imageUrl: "assets/images/general/flags/ksa.png",
              title: "Arabic",
            ),
            SizedBox(height: 10.r),
            LanguageItemWidget(
              imageUrl: "assets/images/general/flags/france.png",
              title: "French",
            ),
            SizedBox(height: 10.r),
            LanguageItemWidget(
              imageUrl: "assets/images/general/flags/germany.png",
              title: "Deutsch",
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageItemWidget extends StatelessWidget {
  const LanguageItemWidget({
    required this.title,
    required this.imageUrl,
    this.isSelected = false,
    super.key,
  });
  final String title;
  final String imageUrl;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52.h,
      padding: EdgeInsets.all(14.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: isSelected ? context.theme.primaryColor : Color(0xffF3F3F3),
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            SizedBox(
              width: 24.w,
              height: 24.h,
              child: Image.asset(
                imageUrl,
              ),
            ),
            SizedBox(width: 14.w),
            Text(
              title,
              style: AppStyles.bodyMediumL.copyWith(
                height: 1.3.h,
              ),
            ),
          ],
        ),
        if (isSelected)
          Icon(
            Icons.check,
            color: context.theme.primaryColor,
          )
      ]),
    );
  }
}
