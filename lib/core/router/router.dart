import 'package:flutter/material.dart';
import 'package:vba_crypto_signal/core/constants/routing_constants.dart';
import 'package:vba_crypto_signal/main.dart';
class AppRouter {
  static PageRoute _getPageRoute({
    required RouteSettings settings,
    required Widget viewToShow,
  }) {
    return MaterialPageRoute(
        builder: (context) => viewToShow, settings: settings);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    Map<String, dynamic> routeArgs = settings.arguments != null
        ? settings.arguments as Map<String, dynamic>
        : {};

    switch (settings.name) {
      case NavigatorRoutes.home:
        return _getPageRoute(
          settings: settings,
          viewToShow: const MyHomePage(title: '',),
        );
  

      default:
        return _getPageRoute(
          settings: settings,
          viewToShow: const Scaffold(),
        );
    }
  }
}
