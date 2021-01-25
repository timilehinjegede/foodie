import 'package:flutter/material.dart';
import 'package:foodie/ui/views/auth/auth_screen.dart';
import 'package:foodie/ui/views/auth/welcome_screen.dart';
import 'package:foodie/ui/views/dashboard/account/account_screen.dart';
import 'package:foodie/ui/views/dashboard/dashboard.dart';
import 'package:foodie/ui/views/dashboard/favorites/favorites_screen.dart';
import 'package:foodie/ui/views/dashboard/history/history_screen.dart';
import 'package:foodie/ui/views/dashboard/home/food_detail.dart';
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
          screen: WelcomeScreen(),
        );
      case authRoute:
        return FoodieFadeRoute(
          screen: AuthScreen(),
        );
      case dashboardRoute:
        return FoodieFadeRoute(
          screen: DashboardScreen(),
        );
      case favoritesRoute:
        return FoodieFadeRoute(
          screen: FavoritesScreen(),
        );
      case accountRoute:
        return FoodieFadeRoute(
          screen: AccountScreen(),
        );
      case historyRoute:
        return FoodieFadeRoute(
          screen: HistoryScreen(),
        );
      case foodDetailRoute:
        Map arguments = routeSettings.arguments;

        return FoodieFadeRoute(
          screen: FoodDetail(
            food: arguments['food'],
          ),
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
