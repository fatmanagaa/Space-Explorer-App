import 'package:flutter/material.dart';
import 'package:space_app/core/app_assets.dart';
import 'package:space_app/core/app_colors.dart';
import 'package:space_app/core/app_styles.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentGeometry.center,
                children: [
                  Image.asset(
                    AppAssets.introPhoto,
                    alignment: AlignmentGeometry.bottomLeft,
                    width: 740,
                    height: 746,
                  ),
                  Text('Explore The Universe ', style: AppStyles.bold48White),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text('Explore', style: AppStyles.titleLarge),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_right_alt_outlined,
                        size: 20,
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
