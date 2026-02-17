import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle titleLarge = GoogleFonts.inter(
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: AppColors.white,
  );

  static TextStyle bodyLarge = GoogleFonts.inter(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: AppColors.white,
  );
  static TextStyle bodyMedium = GoogleFonts.inter(
    fontWeight: FontWeight.w300,
    fontSize: 16,
    color: AppColors.white,
  );
  static TextStyle bold20White = GoogleFonts.inter(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColors.white,
  );
  static TextStyle bold48White = GoogleFonts.inter(
    fontWeight: FontWeight.w700,
    fontSize: 48,
    color: AppColors.white,
  );

}