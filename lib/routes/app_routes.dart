import 'package:jennifer_chiou_s_application3/presentation/start_screen/start_screen.dart';
import 'package:jennifer_chiou_s_application3/presentation/start_screen/binding/start_binding.dart';
import 'package:jennifer_chiou_s_application3/presentation/resgistration_screen/resgistration_screen.dart';
import 'package:jennifer_chiou_s_application3/presentation/resgistration_screen/binding/resgistration_binding.dart';
import 'package:jennifer_chiou_s_application3/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:jennifer_chiou_s_application3/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:jennifer_chiou_s_application3/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:jennifer_chiou_s_application3/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:jennifer_chiou_s_application3/presentation/looking_assignment_screen/looking_assignment_screen.dart';
import 'package:jennifer_chiou_s_application3/presentation/looking_assignment_screen/binding/looking_assignment_binding.dart';
import 'package:jennifer_chiou_s_application3/presentation/completed_tasks_screen/completed_tasks_screen.dart';
import 'package:jennifer_chiou_s_application3/presentation/completed_tasks_screen/binding/completed_tasks_binding.dart';
import 'package:jennifer_chiou_s_application3/presentation/dashboard_one_screen/dashboard_one_screen.dart';
import 'package:jennifer_chiou_s_application3/presentation/dashboard_one_screen/binding/dashboard_one_binding.dart';
import 'package:jennifer_chiou_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:jennifer_chiou_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String startScreen = '/start_screen';

  static String resgistrationScreen = '/resgistration_screen';

  static String signInScreen = '/sign_in_screen';

  static String dashboardScreen = '/dashboard_screen';

  static String lookingAssignmentScreen = '/looking_assignment_screen';

  static String completedTasksScreen = '/completed_tasks_screen';

  static String dashboardOneScreen = '/dashboard_one_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: startScreen,
      page: () => StartScreen(),
      bindings: [
        StartBinding(),
      ],
    ),
    GetPage(
      name: resgistrationScreen,
      page: () => ResgistrationScreen(),
      bindings: [
        ResgistrationBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: lookingAssignmentScreen,
      page: () => LookingAssignmentScreen(),
      bindings: [
        LookingAssignmentBinding(),
      ],
    ),
    GetPage(
      name: completedTasksScreen,
      page: () => CompletedTasksScreen(),
      bindings: [
        CompletedTasksBinding(),
      ],
    ),
    GetPage(
      name: dashboardOneScreen,
      page: () => DashboardOneScreen(),
      bindings: [
        DashboardOneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => StartScreen(),
      bindings: [
        StartBinding(),
      ],
    )
  ];
}
