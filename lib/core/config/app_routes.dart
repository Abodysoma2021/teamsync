import 'package:get/get.dart';
import 'package:teamsync/features/auth/presentation/views/login_view.dart';
import 'package:teamsync/features/auth/presentation/views/signup_view.dart';
import 'package:teamsync/features/main/presentation/views/add_new_group_view.dart';
import 'package:teamsync/features/main/presentation/views/add_new_project_view.dart';
import 'package:teamsync/features/main/presentation/views/add_task_view.dart';
import 'package:teamsync/features/main/presentation/views/change_password_view.dart';
import 'package:teamsync/features/main/presentation/views/edit_profile_view.dart';
import 'package:teamsync/features/main/presentation/views/language_view.dart';
import 'package:teamsync/features/main/presentation/views/main_view.dart';
import 'package:teamsync/features/main/presentation/views/notifications_view.dart';
import 'package:teamsync/features/main/presentation/views/onboarding_view.dart';
import 'package:teamsync/features/main/presentation/views/security_view.dart';
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
  static const String editProfile = '/settings/edit_profile';
  static const String changePassword = '/settings/change_password';
  static const String notificatios = '/settings/notificatios';
  static const String security = '/settings/security';
  static const String language = '/settings/language';
  static const String addNewTask = '/tasks/addNewTask';
  static const String addNewProject = '/project/addNewProject';
  static const String addNewGroup = '/project/addNewGroup';

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
    ),
    GetPage(
      name: editProfile,
      page: () => const EditProfileView(),
    ),
    GetPage(
      name: changePassword,
      page: () => const ChangePasswordView(),
    ),
    GetPage(
      name: notificatios,
      page: () => const NotificationsView(),
    ),
    GetPage(
      name: security,
      page: () => const SecurityView(),
    ),
    GetPage(
      name: language,
      page: () => const LanguageView(),
    ),
    GetPage(
      name: addNewTask,
      page: () => const AddTaskView(),
    ),
    GetPage(
      name: addNewProject,
      page: () => const AddNewProjectView(),
    ),
    GetPage(
      name: addNewGroup,
      page: () => const AddNewGroupView(),
    )
    // GetPage(
    //   name: projectDetails,
    //   page: () => const ProjectDetail(),
    // ),
  ];
}
