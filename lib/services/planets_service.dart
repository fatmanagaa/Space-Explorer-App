import 'dart:convert';
import 'package:flutter/services.dart';
import '../model/planet_details_model.dart';


Future<List<PlanetDetailsModel>> loadPlanets() async {
  final String response =
  await rootBundle.loadString('assets/files/Space_data.txt');

  final List data = json.decode(response);

  return data
      .map((e) => PlanetDetailsModel.fromJson(e))
      .toList();
}
