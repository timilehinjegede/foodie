import 'package:flutter/material.dart';
import 'package:foodie/ui/views/splash/splash_screen.dart';
import 'package:foodie/utils/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodie',
      onGenerateRoute: FoodieRoute.generateRoute,
      theme: foodieTheme,
      home: SplashScreen(),
    );
  }
}
