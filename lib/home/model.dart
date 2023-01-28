import '../battery/view.dart';
import '../core/helper_methods.dart';
import '../grips/view.dart';
import '../heat/view.dart';
import 'controller.dart';

List<General> general = [
  General(
    image: "assets/images/Grips.png",
    name: 'Grips',
    press: () {
      navigateTo(
        page: const GripsPage(),
      );
    },
  ),
  General(
    image: "assets/images/battery.png",
    name: 'Battery',
    press: () {
      navigateTo(
        page: const BatteryScreen(),
      );
    },
  ),
  General(
    image: "assets/images/heat.png",
    name: 'Heat',
    press: () {
      navigateTo(
        page: const HeatScreen(),
      );
    },
  ),
];
