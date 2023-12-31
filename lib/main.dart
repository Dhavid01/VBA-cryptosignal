import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vba_crypto_signal/bloc/login_bloc.dart';
import 'package:vba_crypto_signal/core/router/router.dart';
import 'package:vba_crypto_signal/core/services/navigation_service.dart';
import 'package:vba_crypto_signal/core/utils/colors.dart';
import 'package:vba_crypto_signal/core/utils/locator.dart';
import 'package:vba_crypto_signal/views/auth/login/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => LoginBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vba Crypto Signal',
        theme: ThemeData(
          primarySwatch: GenericColors.gold,
        ),
        onGenerateRoute: AppRouter.generateRoute,
        navigatorKey: NavigationService.instance.navigatorKey,
        home: const LoginView(),
      ),
    );
  }
}
