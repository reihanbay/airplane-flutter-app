import 'package:airplane/static/nav_route.dart';
import 'package:airplane/styles/theme/theme.dart';
import 'package:airplane/ui/pages/bonus_screen.dart';
import 'package:airplane/ui/pages/getstarted_screen.dart';
import 'package:airplane/ui/pages/main_screen.dart';
import 'package:airplane/ui/pages/signup_screen.dart';
import 'package:airplane/ui/pages/splash_screen.dart';
import 'package:airplane/ui/pages/success_co_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: NavRoute.successcheckout.route,
      routes: {
        NavRoute.splash.route : (context) => const SplashScreen(),
        NavRoute.getStart.route : (contex) => const GetStartedScreen(),
        NavRoute.signUp.route : (context) => const SignUpScreen(),
        NavRoute.main.route : (context) => const MainScreen(),
        NavRoute.bonus.route : (context) => const BonusScreen(),
        NavRoute.successcheckout.route : (context) => const SuccessCoScreen(),
      },
    );
  }

  //https://plus.unsplash.com/premium_photo-1679830513869-cd3648acb1db?q=80&w=2127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
}