import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:teamsync/core/config/app_routes.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/core/widgets/app_custom_button.dart';
import 'package:teamsync/features/main/presentation/controllers/onboarding_controller.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<OnboardingController>(
          init: OnboardingController(),
          builder: (controller) {
            return Column(
              children: [
                Expanded(
                  flex: 3,
                  child: PageView(
                    onPageChanged: (v) => controller.onPageChanged(v),
                    controller: controller.pageController,
                    children: const [
                      OnboardingItemWidget(
                        image: "1.json",
                        title: "Easy Steps To Organize Your Projects",
                        content:
                            "Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.",
                      ),
                      OnboardingItemWidget(
                        image: "2.json",
                        title: "The Best app for Tracking your projects",
                        content:
                            "Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.",
                      ),
                      OnboardingItemWidget(
                        image: "3.json",
                        title: "Track Your Works, Get Results",
                        content:
                            "Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28.h),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 38.w),
                  child: Column(
                    children: [
                      DotsIndicator(
                        position: controller.pageIndex,
                        dotsCount: 3,
                        decorator:
                            DotsDecorator(activeColor: Color(0xfff15a24)),
                      ),
                      SizedBox(height: 28.h),
                      AppCustomButton(
                        text: "Create Account",
                        onPressed: () => Get.offNamed(AppRoutes.signup),
                      ),
                      SizedBox(height: 25.5.h),
                      GestureDetector(
                        onTap: () => Get.offNamed(AppRoutes.login),
                        child: Text(
                          "Already Have an Account",
                          style: AppStyles.bodyMediumL
                              .copyWith(color: Color(0xfff15a24)),
                        ),
                      )
                    ],
                  ),
                )),
              ],
            );
          }),
    );
  }
}

class OnboardingItemWidget extends StatelessWidget {
  const OnboardingItemWidget({
    super.key,
    required this.image,
    required this.title,
    required this.content,
  });
  final String image;
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 417.h,
          padding: EdgeInsets.all(45.r),
          decoration: BoxDecoration(
            color: Color(0xffFBFBFD),
          ),
          child: Stack(
            children: [
              Lottie.asset(
                "assets/lotties/onboarding/$image",
                fit: BoxFit.fill,
              ),
              if (image == "1.json")
                Positioned(
                  bottom: 10.h,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    width: 100.w,
                    "assets/images/general/logo.png",
                  ),
                )
            ],
          ),
        ),
        SizedBox(height: 23.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 38.w),
          child: Text(
            title,
            style: AppStyles.bodySemiBoldXL
                .copyWith(fontSize: 22.sp, height: 1.3.h),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 38.w),
          child: Text(
            content,
            style: AppStyles.bodyRegularM
                .copyWith(color: const Color(0xffA7AEC1), height: 1.8.h),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
