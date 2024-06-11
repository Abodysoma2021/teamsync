import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  late final PageController pageController;
  int pageIndex = 0;
  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  void onPageChanged(int v) {
    pageIndex = v;
    pageController.animateToPage(v,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
    update();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
