import 'package:cookiecutter_flutter/app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:cookiecutter_flutter/routes/app_routes.dart';

///
class MainNavigation {
  ///
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      // Add more cases for other routes
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
