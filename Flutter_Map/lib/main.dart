import 'package:flutter/material.dart';

import 'screens/screens.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const LoginRegisterApp());
}

class LoginRegisterApp extends StatelessWidget {
  const LoginRegisterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoginRegister App',
      theme: AppTheme.appTheme,
      routes: <String, Widget Function(BuildContext)>{
        HomeScreen.routeName: (_) => const HomeScreen(),
        LoginScreen.routeName: (_) => const LoginScreen(),
        RegisterScreen.routeName: (_) => const RegisterScreen(),
        MapScreen.routeName: (_) => const MapScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
