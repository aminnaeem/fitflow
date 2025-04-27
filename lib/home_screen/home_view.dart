import 'package:fitflow/assets/colors.dart';
import 'package:fitflow/assets/fonts.dart';
import 'package:fitflow/home_screen/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewmodel(),
      builder: (context,viewModel,child) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontFamily: AppFonts.inter,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have Account? ",
                      style: TextStyle(
                        color: AppColors.secondary,
                        fontFamily: AppFonts.inter,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Register Now!",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontFamily: AppFonts.inter,
                        fontSize: 14
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: SearchBar(
                    onTapOutside: (event) => FocusScope.of(context).unfocus(),
                    leading: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: WidgetStateProperty.all(
                      TextStyle(
                        fontFamily: AppFonts.inter
                      )
                    ),
                    textStyle: WidgetStateProperty.all(
                      TextStyle(
                        fontFamily: AppFonts.inter
                      )
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                      )
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Popular Workouts"
                    ),
                    Container(
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
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
