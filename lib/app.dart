import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:teamsync/core/config/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            theme: ThemeData(
              primaryColor: Color(0xfff15a24),
              inputDecorationTheme: InputDecorationTheme(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 1.5.w, color: Color(0xfff15a24)),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
              fontFamily: "Outfit",
              useMaterial3: false,
              scaffoldBackgroundColor: Colors.white,
            ),
            debugShowCheckedModeBanner: false,
            getPages: AppRoutes.routes,
            home: child,
            initialRoute: AppRoutes.settings,
          );
        });
  }
}
