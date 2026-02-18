import 'package:flutter/material.dart';
import 'package:space_app/core/app_colors.dart';

class AppTheme {
  static ThemeData darkTheme=ThemeData(
    scaffoldBackgroundColor: AppColors.black,

    elevatedButtonTheme: ElevatedButtonThemeData(

      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.red),
        fixedSize: MaterialStateProperty.all(const Size(340, 60)),

        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29),
          ),
        ),
        padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
      ),

    )
  );
}