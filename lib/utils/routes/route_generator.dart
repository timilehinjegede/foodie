import 'package:flutter/material.dart';
import 'package:foodie/ui/views/splash/splash_screen.dart';
import 'package:foodie/utils/routes/route_names.dart';

class FoodieRoute {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splashRoute:
        return FoodieFadeRoute(
          screen: SplashScreen(),
        );
      case welcomeRoute:
        return FoodieFadeRoute(
          screen: SplashScreen(),
        );
      case authRoute:
        return FoodieFadeRoute(
          screen: SplashScreen(),
        );
      // no screen found
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text('No route found'),
            ),
            body: Center(
              child: Text(
                'No route defined for ${routeSettings.name}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
    }
  }
}

class FoodieFadeRoute extends PageRouteBuilder {
  final Widget screen;

  FoodieFadeRoute({this.screen})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => screen,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
