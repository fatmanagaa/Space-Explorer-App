class PlanetDetailsModel {
  final String name;
  final String image;
  final String model3d;
  final String title;
  final String about;
  final int distanceFromSunKm;
  final double lengthOfDayHours;
  final double orbitalPeriodYears;
  final double radiusKm;
  final String massKg;
  final double gravity;
  final String surfaceAreaKm2;

  PlanetDetailsModel({
    required this.name,
    required this.image,
    required this.model3d,
    required this.title,
    required this.about,
    required this.distanceFromSunKm,
    required this.lengthOfDayHours,
    required this.orbitalPeriodYears,
    required this.radiusKm,
    required this.massKg,
    required this.gravity,
    required this.surfaceAreaKm2,
  });

  factory PlanetDetailsModel.fromJson(Map<String, dynamic> json) {
    return PlanetDetailsModel(
      name: json['name'],
      image: json['image'],
      model3d: json['model3d'],
      title: json['title'],
      about: json['about'],
      distanceFromSunKm: (json['distanceFromSunKm'] as num).toInt(),
      lengthOfDayHours: (json['lengthOfDayHours'] as num).toDouble(),
      orbitalPeriodYears: (json['orbitalPeriodYears'] as num).toDouble(),
      radiusKm: (json['radiusKm'] as num).toDouble(),
      massKg: json['massKg'],
      gravity: (json['gravity'] as num).toDouble(),
      surfaceAreaKm2: json['surfaceAreaKm2'],
    );
  }
}
