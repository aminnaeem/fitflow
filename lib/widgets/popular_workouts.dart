import 'package:fitflow/assets/colors.dart';
import 'package:fitflow/assets/fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopularWorkouts extends StatelessWidget {
  const PopularWorkouts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140,
        width: 240 ,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lower Body\nTraining",
                style: TextStyle(
                  color: AppColors.secondary,
                  fontFamily: AppFonts.poppinsBold,
                  fontSize: 16
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(4)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: FaIcon(
                          FontAwesomeIcons.fire,
                          size: 12,
                          color: AppColors.background,
                        ),
                      ),
                      Text(
                        "500 Kcal",
                        style: TextStyle(
                          color: AppColors.background,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(4)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: FaIcon(
                          FontAwesomeIcons.clock,
                          size: 12,
                          color: AppColors.background,
                        ),
                      ),
                      Text(
                        "50 Min",
                        style: TextStyle(
                          color: AppColors.background,
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
