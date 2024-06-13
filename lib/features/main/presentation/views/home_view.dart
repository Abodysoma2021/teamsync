import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:teamsync/core/theme/app_styles.dart';

class HomeView extends GetView {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff191E32),
                    ),
                    width: double.infinity,
                    height: (AppStyles.deviceHeight(context) / 2).h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 40.h, horizontal: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 22.r,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hi, Abodysoma",
                                      style: AppStyles.bodySemiBoldL
                                          .copyWith(color: Colors.white),
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                      "Let's Work Casualy",
                                      style: AppStyles.bodyRegularS.copyWith(
                                        color: Color(0xff9A9CA6),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesome.bell_o,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: TextFormField(
                          style: AppStyles.bodyRegularM,
                          decoration: InputDecoration(
                            hintText: "Search your tasks",
                            hintStyle: AppStyles.bodyRegularM
                                .copyWith(color: Color(0xff959CAF)),
                            prefixIcon: const Icon(FontAwesome.search),
                            prefixIconColor: WidgetStateColor.resolveWith(
                              (states) => states.contains(WidgetState.focused)
                                  ? context.theme.primaryColor
                                  : Color(0xff959CAF),
                            ),
                            suffixIconColor: WidgetStateColor.resolveWith(
                              (states) => states.contains(WidgetState.focused)
                                  ? context.theme.primaryColor
                                  : Color(0xff959CAF),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesome.filter,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xff3F4253),
                              ),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xff3F4253),
                              ),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 35.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Your Latest Projects",
                              style: AppStyles.bodyMediumL
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "See All",
                              style: AppStyles.bodyMediumM
                                  .copyWith(color: context.theme.primaryColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        height: 270.h,
                        child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) => Container(
                            padding: EdgeInsets.all(10.h),
                            margin: EdgeInsets.only(left: 10.w),
                            height: double.infinity,
                            width: 250.w,
                            decoration: BoxDecoration(
                              color: const Color(0xffFBFBFD),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 120.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/general/system-testing-flowchart.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "Redesign For Project, Nour Umrah App",
                                  style: AppStyles.bodyBoldL,
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Progress",
                                      style: AppStyles.bodyMediumS.copyWith(
                                        color: Color(0xffCFD3DE),
                                      ),
                                    ),
                                    Text("36%", style: AppStyles.bodySemiBoldS)
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                LinearProgressIndicator(
                                  minHeight: 5.h,
                                  backgroundColor: const Color(0xffF3F3F3),
                                  valueColor: AlwaysStoppedAnimation(
                                      context.theme.primaryColor),
                                  borderRadius: BorderRadius.circular(12.r),
                                  value: 0.36,
                                ),
                                SizedBox(height: 10.h),
                                Expanded(
                                  child: Row(
                                    children: [
                                      const OverlappingAvatars(),
                                      SizedBox(width: 10.w),
                                      Icon(
                                        FontAwesome.user_o,
                                        size: 15.sp,
                                        color: const Color(0xffA7AEC0),
                                      ),
                                      Expanded(
                                        child: Text.rich(
                                          TextSpan(
                                              text: "Assigned By : ",
                                              children: [
                                                TextSpan(
                                                  text: "Abodysoma",
                                                  style: AppStyles.bodyRegularS
                                                      .copyWith(
                                                          color: Colors.black),
                                                )
                                              ]),
                                          style: AppStyles.bodyRegularS
                                              .copyWith(
                                                  color:
                                                      const Color(0xffA7AEC0)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today Tasks",
                      style: AppStyles.bodyBoldL,
                    ),
                    Text(
                      "See All",
                      style: AppStyles.bodyMediumM
                          .copyWith(color: context.theme.primaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
                  margin: EdgeInsets.only(bottom: 16.h),
                  decoration: BoxDecoration(
                    color: const Color(0xffFBFBFD),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.h, horizontal: 10.w),
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.20),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Text(
                          "High",
                          style:
                              AppStyles.bodyMediumM.copyWith(color: Colors.red),
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Make Moodbaord",
                                  style: AppStyles.bodyMediumL
                                      .copyWith(height: 1.3.h),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  "Design Landing Page",
                                  style: AppStyles.bodyRegularS.copyWith(
                                      height: 1.h.h, color: Color(0xff8c8e98)),
                                )
                              ],
                            ),
                          ),
                          const OverlappingAvatars(),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesome.clock_o,
                                size: 15.sp,
                                color: Color(0xff8c8e98),
                              ),
                              SizedBox(width: 3.w),
                              Text(
                                "10.00 Am - 10.30 AM",
                                style: AppStyles.bodyMediumS.copyWith(
                                  fontSize: 10.sp,
                                  height: 1.2.h,
                                  color: Color(0xff8c8e98),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "On Progress",
                            style: AppStyles.bodyMediumS
                                .copyWith(color: Colors.red),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OverlappingAvatars extends StatelessWidget {
  const OverlappingAvatars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 4; i++)
          Align(
            widthFactor: 0.4.w,
            // parent circle avatar.
            // We defined this for better UI
            child: CircleAvatar(
              radius: 18.r,
              backgroundColor: Colors.white,
              // Child circle avatar
              child: i == 3
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 15.r,
                          child: Center(
                            child: Text('7+',
                                style: AppStyles.bodyBoldM
                                    .copyWith(color: Colors.white)),
                          ),
                          // backgroundImage:
                          //     AssetImage('assets/avatar4.png'), // Your image here
                        ),
                      ],
                    )
                  : CircleAvatar(
                      radius: 15.r,
                      backgroundColor: Colors.grey,
                      // backgroundImage: NetworkImage(RandomImages[i]),
                    ),
            ),
          )
      ],
    );

    // return Row(
    //   mainAxisSize: MainAxisSize.min,
    //   children: [
    //     // First avatar
    //     CircleAvatar(
    //       radius: avatarRadius,
    //       // backgroundImage:
    //       //     AssetImage('assets/avatar1.png'), // Your image here
    //     ),
    //     // Second avatar
    //     CircleAvatar(
    //       radius: avatarRadius,
    //       // backgroundImage:
    //       //     AssetImage('assets/avatar2.png'), // Your image here
    //     ),
    //     // Third avatar
    //     CircleAvatar(
    //       radius: avatarRadius,
    //       // backgroundImage:
    //       //     AssetImage('assets/avatar3.png'), // Your image here
    //     ),
    //     // Fourth avatar with overlay
    //     Stack(
    //       alignment: Alignment.center,
    //       children: [
    //         CircleAvatar(
    //           radius: avatarRadius,
    //           // backgroundImage:
    //           //     AssetImage('assets/avatar4.png'), // Your image here
    //         ),
    //         Container(
    //           width: avatarRadius * 2,
    //           height: avatarRadius * 2,
    //           decoration: BoxDecoration(
    //             color: Colors.black.withOpacity(0.6),
    //             shape: BoxShape.circle,
    //           ),
    //           child: Center(
    //             child: Text(
    //               '7+',
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ],
    // );
  }
}
