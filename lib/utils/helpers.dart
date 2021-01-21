import 'package:flutter/material.dart';

class FoodieHelpers {
  String validateEmail(String email) {}

  String checkEmptyFields(String fieldValue) {}
}

class DeviceUtil {
  final BuildContext context;

  DeviceUtil(this.context);

  MediaQueryData get mediaQuery => MediaQuery.of(context);

  double screenHeight({double extent = 1}) => mediaQuery.size.height * extent;

  double screenWidth({double extent = 1}) => mediaQuery.size.width * extent;

  double statusBarHeight() => mediaQuery.padding.top;

  double bottomBarHeight() => mediaQuery.padding.bottom;
}

class XBox extends StatelessWidget {
  final double _width;

  XBox(this._width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
    );
  }
}

class YBox extends StatelessWidget {
  final double _height;

  YBox(this._height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
    );
  }
}
