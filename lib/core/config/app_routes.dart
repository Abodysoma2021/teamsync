import 'package:get/get.dart';
import 'package:teamsync/features/auth/presentation/views/login_view.dart';
import 'package:teamsync/features/auth/presentation/views/signup_view.dart';
import 'package:teamsync/features/main/presentation/views/main_view.dart';
import 'package:teamsync/features/main/presentation/views/onboarding_view.dart';
import 'package:teamsync/features/main/presentation/views/settings_view.dart';
import 'package:teamsync/features/main/presentation/views/splash_view.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  // Auth Rotues
  static const String login = '/login';
  static const String signup = '/signup';
  // Main
  static const String main = '/';
  static const String settings = '/settings';

  static final List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashView(),
    ),
    GetPage(
      name: onboarding,
      page: () => const OnboardingView(),
    ),
    GetPage(
      name: login,
      page: () => const LoginView(),
    ),
    GetPage(
      name: signup,
      page: () => const SignupView(),
    ),
    GetPage(
      name: main,
      page: () => const MainView(),
    ),
    GetPage(
      name: settings,
      page: () => const SettingsView(),
    )
    // GetPage(
    //   name: projectDetails,
    //   page: () => const ProjectDetail(),
    // ),
  ];
}
