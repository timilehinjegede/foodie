import 'package:flutter/material.dart';
import 'package:foodie/utils/utils.dart';

class FoodieButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isPainted;

  const FoodieButton(
      {Key key, @required this.text, this.onPressed, this.isPainted = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      onPressed: onPressed,
      height: 65,
      minWidth: double.infinity,
      color: isPainted ? primaryColor : whiteColor,
      textColor: isPainted ? whiteColor : primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }
}
