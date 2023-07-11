import 'package:flutter/material.dart';
import 'package:vba_crypto_signal/core/router/router.dart';
import 'package:vba_crypto_signal/core/services/navigation_service.dart';
import 'package:vba_crypto_signal/views/auth/login/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: AppRouter.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      home: const LoginView(),
    );
  }
}
