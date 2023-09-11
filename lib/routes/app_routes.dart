import 'package:beamer/beamer.dart';
import 'package:flutter_beamer/routes/app_routes_name.dart';
import 'package:flutter_beamer/third_screen.dart';
import '../first_screen.dart';
import '../second_screen.dart';

class AppRoutesDelegate {
  final appRoutesDelegate = BeamerDelegate(
    initialPath: AppRoutesNames.firstScreen,
      locationBuilder: RoutesLocationBuilder(routes: {
    AppRoutesNames.firstScreen: (context, state, data) {
      return const FirstScreen();
    },
    AppRoutesNames.secondScreen: (context, state, data) {
      return const SecondScreen();
    },
    AppRoutesNames.thirdScreen: (context, state, data) {
      return const ThirdScreen();
    }
  }));
}
