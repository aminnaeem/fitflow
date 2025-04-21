import 'package:fitflow/assets/colors.dart';
import 'package:fitflow/assets/fonts.dart';
import 'package:fitflow/assets/images.dart';
import 'package:fitflow/getstarted_screen/getstarted_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class GetstartedView extends StatelessWidget {
  const GetstartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => GetstartedViewmodel(),
      builder: (context,viewModel,child) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Get Fit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 36,
                      fontFamily: AppFonts.interItalic,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                  Text(
                    'Stay Motivated',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.text,
                      fontSize: 36,
                      fontFamily: AppFonts.inter
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Image.asset(
                      AppImages.dumbells,
                      width: 260,
                    ),
                  ),
                  Text(
                    'Conquer\nYour Limits',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.text,
                      fontSize: 36,
                      fontFamily: AppFonts.inter
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: ElevatedButton(
                      onPressed: () {
                    
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(AppColors.primary),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                        minimumSize: WidgetStateProperty.all(
                          Size(300, 56)
                        )
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: AppColors.text,
                          fontSize: 16
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
