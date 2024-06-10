import 'package:get/get.dart';
import 'package:teamsync/features/main/presentation/views/onboarding_view.dart';
import 'package:teamsync/features/main/presentation/views/splash_view.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static final List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashView(),
    ),
    GetPage(
      name: onboarding,
      page: () => const OnboardingView(),
    ),
  ];
}
