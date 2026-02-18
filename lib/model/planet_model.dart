import 'package:space_app/core/app_assets.dart';

class PlanetModel {
  final String? name;
  final String? image;

  PlanetModel({this.name, this.image});

  static List<PlanetModel> planetsData = [
    PlanetModel(name: 'Mercury', image: AppAssets.mercury),
    PlanetModel(name: 'Venus', image:AppAssets.venus),
    PlanetModel(name: 'Earth', image: AppAssets.earth),
    PlanetModel(name: 'Mars', image: AppAssets.mars),
    PlanetModel(name: 'Jupiter', image: AppAssets.jupiter),
    PlanetModel(name: 'Saturn', image: AppAssets.saturn),
    PlanetModel(name: 'Uranus', image: AppAssets.uranus),
    PlanetModel(name: 'Neptune', image: AppAssets.neptune),
    PlanetModel(name: 'Sun', image: AppAssets.sun),
  ];
}
