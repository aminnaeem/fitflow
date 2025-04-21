import 'package:fitflow/getstarted_screen/getstarted_view.dart';
import 'package:fitflow/home_screen/home_view.dart';
import 'package:fitflow/splash_screen/splashscreen_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: SplashscreenView,
      initial: true
    ),
    MaterialRoute(
      page: GetstartedView
    ),
    MaterialRoute(
      page: HomeView
    ),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
  ]
)
class App {}
