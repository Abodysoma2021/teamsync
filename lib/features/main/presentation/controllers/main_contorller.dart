import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamsync/features/main/presentation/views/home_view.dart';

class MainContorller extends GetxController {
  int index = 0;

  List<Widget> views = [
    const HomeView(),
    Container(),
    Container(),
    Container(),
  ];

  void onViewChanged(int cindex) {
    index = cindex;
    update();
  }
}
