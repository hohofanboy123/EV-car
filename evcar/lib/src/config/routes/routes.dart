import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../future/dashboard/view/pages/dashboard_screen.dart';

class AppRoutes {
  static const String onBoard = '/';
  static const String register = '/register';
  static const String mainPage = '/MainPage';
  static const String dashBoard = '/dashboard/view/pages/dashboard_screen.dart';
  static final List<GetPage> routes = [
    GetPage(
      name: onBoard,
      page: () => const DashboardScreen(),
    ),
    GetPage(
      name: register,
      page: () => const Scaffold(),
    ),
    GetPage(
      name: mainPage,
      page: () => const Scaffold(),
    ),
    GetPage(
      name: dashBoard,
      page: () => const Scaffold(),
    ),
  ];
}
