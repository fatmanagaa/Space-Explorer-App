import 'package:flutter/material.dart';
import 'package:space_app/core/app_routes.dart';
import 'package:space_app/core/app_theme.dart';
import 'package:space_app/screens/Home/home_screen.dart';
import 'package:space_app/screens/intro/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.introScreen,
      routes: {
        AppRoutes.introScreen:((context) => IntroScreen()),
        AppRoutes.homeScreen:((context) => HomeScreen()),


      },
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,

    );
    }
}


