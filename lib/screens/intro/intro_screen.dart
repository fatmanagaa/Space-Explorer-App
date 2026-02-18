import 'package:flutter/material.dart';
import 'package:space_app/core/app_assets.dart';
import 'package:space_app/core/app_colors.dart';
import 'package:space_app/core/app_styles.dart';

import '../../core/app_routes.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentGeometry.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      AppAssets.introPhoto,
                      fit: BoxFit.cover,
                      alignment: AlignmentGeometry.bottomLeft,
                      width: 780,
                      height: 650,
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text('Explore The Universe ', style: AppStyles.bold40White)),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  elevation: 0
                ),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.homeScreen);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore',
                      style: AppStyles.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    IconButton(

                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.homeScreen,
                        );
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        size: 35,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
