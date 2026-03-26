import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle titleLarge = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: AppColors.white,
  );

  static TextStyle bodyLarge = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: AppColors.white,
  );
  static TextStyle bodyMedium = GoogleFonts.poppins(
    fontWeight: FontWeight.w300,
    fontSize: 16,
    color: AppColors.white,
  );
  static TextStyle bold20White = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColors.white,
  );
  static TextStyle bold40White = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 40,
    color: AppColors.white,
  );

}