import 'dart:async';

import 'package:fitflow/app/app.locator.dart';
import 'package:fitflow/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashscreenViewmodel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void init(BuildContext context) {
    _startDelay();
  }

  void _startDelay() {
    Timer(Duration(milliseconds: 2000), () {
      _navigationService.replaceWithGetstartedView();
    });
  }
}