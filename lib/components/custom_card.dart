import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_test/constants/app_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
  });
  final String text;
  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      child: Column(
        children: [
          Container(
            color: const Color(0xffEEEEEE),
            width: double.infinity,
            height: 30,
            child: Center(
                child: Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            )),
          ),
          Expanded(
            child: SvgPicture.asset(
              'assets/icons/$icon.svg',
              color: color,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
