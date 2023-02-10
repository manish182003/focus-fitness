import 'package:flutter/material.dart';
import 'package:focus_fitness/screens/auth/login_page.dart';
import 'package:focus_fitness/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus Fitness',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary,
          elevation: 0,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.secondary,
          primary: AppColors.primary,
        ),
        scaffoldBackgroundColor: AppColors.primary
      ),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
