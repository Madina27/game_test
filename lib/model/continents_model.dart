import 'package:flutter/material.dart';
import 'package:game_test/constants/app_colors.dart';
import 'package:game_test/constants/app_text.dart';
import 'package:game_test/model/quastions_model.dart';

class Continents {
  Continents({
    required this.text,
    required this.icon,
    required this.color,
    this.quastions,
  });

  final String text;
  final String icon;
  final Color color;
  final List<Questions>? quastions;
}

final europe = Continents(
  text: AppText.europe,
  icon: 'europe',
  color: AppColors.blueIconColor,
);

final asia = Continents(
  text: AppText.asia,
  icon: 'asia',
  color: AppColors.asiaColor,
  quastions: asiaQuastions,
);

final northAmerica = Continents(
  text: AppText.northAmerica,
  icon: 'north_america',
  color: AppColors.northAmericaColor,
);

final southAmerica = Continents(
  text: AppText.southAmerica,
  icon: 'south_america',
  color: AppColors.northAmericaColor,
);
final africa = Continents(
  text: AppText.africa,
  icon: 'africa',
  color: AppColors.northAmericaColor,
);
final australia = Continents(
  text: AppText.australia,
  icon: 'australia',
  color: AppColors.blueImageColor,
);

List<Continents> continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
