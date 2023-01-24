import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    //MenuOption('home', Icons.home, 'Home Screen', const HomeScreen()),
    MenuOption(
        'listview1', Icons.list, 'List View Tipo 1', const ListView1Screen()),
    MenuOption('listview2', Icons.list_alt_rounded, 'List View Tipo 2',
        const ListView2Screen()),
    MenuOption('alert', Icons.add, 'Alertas- Alerts', const AlertScreen()),
    MenuOption(
        'card', Icons.card_giftcard, 'Tarjetas- Cards', const CardScreen()),
    MenuOption(
      'avatar',
      Icons.supervised_user_circle_outlined,
      'Circule Avatar',
      const AvatarScreen(),
    ),
    MenuOption('animated', Icons.play_lesson_outlined, 'Animated Screen',
        const AnimatedScreen()),
    MenuOption('inputs', Icons.input_rounded, 'Text Inputs', const InputScreen()),
    MenuOption(
        'slider', Icons.slideshow_sharp, 'Sliders', const SliderScreen()),
        MenuOption('listviewbuilder', Icons.build_circle, 'ListvieBuilder', const ListViewBuilderScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'home': (BuildContext context) => const HomeScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
