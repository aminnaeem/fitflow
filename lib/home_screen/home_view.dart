import 'package:fitflow/home_screen/home_viewmodel.dart';
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
          
        );
      },
    );
  }
}
