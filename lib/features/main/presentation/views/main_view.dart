import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:teamsync/core/config/app_routes.dart';
import 'package:teamsync/core/theme/app_styles.dart';
import 'package:teamsync/features/main/presentation/controllers/main_contorller.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainContorller>(
        init: MainContorller(),
        builder: (controller) {
          return Scaffold(
            body: controller.views[controller.index],
            bottomNavigationBar: BottomAppBar(
              elevation: 0,
              height: 70.h,
              shape: const CircularNotchedRectangle(),
              notchMargin: 6.0,
              child: BottomNavigationBar(
                elevation: 0,
                onTap: (index) => controller.onViewChanged(index),
                selectedItemColor: context.theme.primaryColor,
                unselectedItemColor: Colors.grey,
                showUnselectedLabels: true,
                currentIndex: controller.index,
                selectedLabelStyle:
                    AppStyles.bodyRegularS.copyWith(height: 1.4.h),
                unselectedLabelStyle:
                    AppStyles.bodyRegularS.copyWith(height: 1.4.h),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(MaterialCommunityIcons.home_variant_outline),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(MaterialCommunityIcons.notebook_outline),
                    label: 'Your Task',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(MaterialCommunityIcons.calendar_outline),
                    label: 'Calendar',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(MaterialCommunityIcons.view_dashboard_outline),
                    label: 'Workspace',
                  ),
                ],
                type: BottomNavigationBarType.fixed,
                iconSize: 28,
              ),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: context.theme.primaryColor,
              onPressed: () {
                Get.toNamed(AppRoutes.addNewGroup);
              },
              child: Icon(Icons.add),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          );
        });
  }
}
