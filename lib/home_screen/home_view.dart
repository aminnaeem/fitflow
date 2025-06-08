import 'package:fitflow/assets/colors.dart';
import 'package:fitflow/assets/fonts.dart';
import 'package:fitflow/assets/images.dart';
import 'package:fitflow/home_screen/home_viewmodel.dart';
import 'package:fitflow/widgets/headings.dart';
import 'package:fitflow/widgets/popular_workouts.dart';
import 'package:flutter/material.dart';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    SizedBox(
                      width: 4
                    ),
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
                    Headings(heading: "Popular Workouts"),
                    SizedBox(
                      height: 156,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              PopularWorkouts()
                            ],
                          );
                        }
                      ),
                    ),
                    Headings(heading: "Today Plan"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                          height: 140,
                          width: MediaQuery.sizeOf(context).width*0.9,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: WebImages.myPlan,
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Text(
                            "Design your\nDaily plan",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontFamily: AppFonts.inter,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  offset: Offset(1.5, 1.5),
                                  blurRadius: 3,
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Headings(heading: "Exercise Programs"),
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


