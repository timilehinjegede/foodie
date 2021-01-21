import 'package:flutter/material.dart';
import 'package:foodie/utils/utils.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          prefixIcon: Icon(
            Icons.search_rounded,
            color: blackColor.withOpacity(0.7),
          ),
          hintText: 'Search',
          contentPadding: EdgeInsets.all(18.0),
          fillColor: greyColor.withOpacity(0.15),
          border: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(radius),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(radius),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(radius),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(radius),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(radius),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
    );
  }
}
