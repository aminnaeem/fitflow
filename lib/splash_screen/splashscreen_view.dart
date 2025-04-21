import 'package:fitflow/assets/colors.dart';
import 'package:fitflow/assets/images.dart';
import 'package:fitflow/splash_screen/splashscreen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:stacked/stacked.dart';

class SplashscreenView extends StatelessWidget {
  const SplashscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SplashscreenViewmodel(),
      onViewModelReady: (viewModel) => viewModel.init(context),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    AppImages.logo,
                    width: 300,
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SpinKitCircle(
                    color: AppColors.primary,
                  ),
                )
              ]
            ),
          )
        );
      },
    );
  }
}
