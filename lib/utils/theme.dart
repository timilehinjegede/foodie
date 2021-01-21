import 'package:flutter/material.dart';

// app theme
ThemeData foodieTheme = ThemeData(
  primaryColor: primaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: bgColor,
  indicatorColor: primaryColor,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: primaryColor,
  ),
  tabBarTheme: TabBarTheme(
    labelColor: blackColor,
    unselectedLabelColor: greyColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: primaryColor,
        width: 0.5,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: blackColor,
        width: 0.5,
      ),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: blackColor,
        width: 0.5,
      ),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: redColor,
        width: 0.5,
      ),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: redColor,
        width: 0.5,
      ),
    ),
  ),
);

// colors
const Color primaryColor = Color(0xffFA4A0C);
const Color primaryColorDark = Color(0xffFF4B3A);
const Color greyColor = Color(0xff9A9A9D);
const Color blackColor = Color(0xff000000);
const Color whiteColor = Color(0xffFFFFFF);
const Color yellowColor = Color(0xffF47B0A);
const Color pinkColor = Color(0xffEB4796);
const Color blueColor = Color(0xff0038FF);
const Color bgColor = Color(0xffF2F2F2);
const Color redColor = Colors.red;
const Color transparentColor = Colors.transparent;

// styles

// fonts
