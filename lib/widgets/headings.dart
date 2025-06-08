import 'package:fitflow/assets/colors.dart';
import 'package:fitflow/assets/fonts.dart';
import 'package:flutter/material.dart';

class Headings extends StatelessWidget {
  final String heading;

  const Headings({
    super.key, required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        heading,
        style: TextStyle(
          color: AppColors.text,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: AppFonts.inter
        ),
      ),
    );
  }
}
