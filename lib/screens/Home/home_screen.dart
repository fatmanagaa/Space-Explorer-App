import 'package:flutter/material.dart';
import 'package:space_app/core/app_assets.dart';
import 'package:space_app/core/app_colors.dart';
import 'package:space_app/core/app_styles.dart';
import 'package:space_app/model/planet_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<PlanetModel> planetsData = [
    PlanetModel(name: 'Mercury', image: AppAssets.mercury),
    PlanetModel(name: 'Venus', image: AppAssets.venus),
    PlanetModel(name: 'Earth', image:AppAssets.earth),
    PlanetModel(name: 'Mars', image:AppAssets.mars),
    PlanetModel(name: 'Jupiter', image:AppAssets.jupiter),
    PlanetModel(name: 'Saturn', image: AppAssets.saturn),
    PlanetModel(name: 'Uranus', image: AppAssets.uranus),
    PlanetModel(name: 'Neptune', image: AppAssets.neptune),
    PlanetModel(name: 'Sun', image:AppAssets.sun),
  ];
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 170,
                    child: Image.asset(AppAssets.homePhoto, fit: BoxFit.cover),
                  ),
                  SizedBox(height: 20),
                  Center(child: Text('Explore', style: AppStyles.titleLarge)),
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Which planet would you like to explore?',
                style: AppStyles.titleLarge,
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: planetsData.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(planetsData[index].image!, fit: BoxFit.contain,height: 250,),
                      SizedBox(height: 30,),
                      Text(
                        planetsData[index].name!,
                        style: AppStyles.titleLarge,
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.previousPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeIn,
                      );
                    },
                    icon: CircleAvatar(
                      backgroundColor: AppColors.red,
                      child: Icon(Icons.arrow_back, color: AppColors.white),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeIn,
                      );
                    },
                    icon: CircleAvatar(
                      backgroundColor: AppColors.red,

                      child: Icon(Icons.arrow_forward, color: AppColors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16),
                elevation: 0,
              ),
              onPressed: () {
                //todo: navigate to details screen
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Explore ${planetsData[currentPage].name}',
                    style: AppStyles.titleLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
