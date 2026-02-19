import 'package:flutter/material.dart';

import '../../core/app_assets.dart';
import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_styles.dart';
import '../../model/planet_details_model.dart';

class PlanetDetailsScreen extends StatelessWidget {
  const PlanetDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PlanetDetailsModel planet =
        ModalRoute.of(context)!.settings.arguments as PlanetDetailsModel;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Stack(
                  fit: StackFit.expand,

                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 110,
                      child: Image.asset(
                        AppAssets.homePhoto,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(planet.name, style: AppStyles.titleLarge),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            AppColors.black.withValues(alpha: 0.6),
                            AppColors.black,
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 16,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: CircleAvatar(
                          backgroundColor: AppColors.red,
                          child: Icon(Icons.arrow_back, color: AppColors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(planet.title, style: AppStyles.titleLarge),
                  Center(
                    child: Image.asset(planet.image, height: 200, width: 200),
                  ),
                  Text('About', style: AppStyles.titleLarge),
                  Text(planet.about, style: AppStyles.bodyMedium),
                  Text(
                    "Distance from Sun (km): ${planet.distanceFromSunKm ?? 'N/A'}",
                    style: AppStyles.bodyLarge,
                  ),
                  Text(
                    "Length of Day (hours): ${planet.lengthOfDayHours ?? 'N/A'}",
                    style: AppStyles.bodyLarge,
                  ),
                  Text(
                    "Orbital Period (Earth years): ${planet.orbitalPeriodYears ?? 'N/A'}",
                    style: AppStyles.bodyLarge,
                  ),
                  Text(
                    "Radius (km): ${planet.radiusKm ?? 'N/A'}",
                    style: AppStyles.bodyLarge,
                  ),
                  Text(
                    "Mass (kg): ${planet.massKg ?? 'N/A'}",
                    style: AppStyles.bodyLarge,
                  ),
                  Text(
                    "Gravity (m/s²): ${planet.gravity ?? 'N/A'}",
                    style: AppStyles.bodyLarge,
                  ),
                  Text(
                    "Surface Area (km²): ${planet.surfaceAreaKm2 ?? 'N/A'}",
                    style: AppStyles.bodyLarge,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
