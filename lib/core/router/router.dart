import 'package:flutter/material.dart';
import 'package:vba_crypto_signal/core/constants/routing_constants.dart';
import 'package:vba_crypto_signal/views/auth/login/login_view.dart';
import 'package:vba_crypto_signal/views/home.dart';
import 'package:vba_crypto_signal/views/home_view/home_view.dart';

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
      case NavigatorRoutes.login:
        return _getPageRoute(
          settings: settings,
          viewToShow: const LoginView(),
        );
      case NavigatorRoutes.home:
        return _getPageRoute(
          settings: settings,
          viewToShow: const MyHomePage(),
        );

      default:
        return _getPageRoute(
          settings: settings,
          viewToShow: const Scaffold(),
        );
    }
  }
}
