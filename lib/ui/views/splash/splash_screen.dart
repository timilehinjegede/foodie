import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _loadSplash() {
    const duration = Duration(seconds: 3);
    Timer(
      duration,
      () {
        Navigator.pushReplacementNamed(context, welcomeRoute);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _loadSplash();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(FoodieAssets.bgSplash),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                  color: whiteColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50.0,
                      color: blackColor.withOpacity(0.15),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      FoodieAssets.foodieLogo,
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      FoodieStrings.sCText,
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                    YBox(10),
                    SizedBox(
                      width: 27,
                      height: 27,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(primaryColor),
                        strokeWidth: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
