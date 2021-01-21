import 'package:flutter/material.dart';

class FoodieTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;

  const FoodieTextField({
    Key key,
    @required this.label,
    @required this.hint,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}
