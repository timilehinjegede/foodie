import 'package:flutter/material.dart';
import 'package:foodie/utils/utils.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: bgColor,
        iconTheme: IconThemeData(
          color: blackColor,
        ),
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  FoodieStrings.favorites,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Spacer(),
              Text(
                FoodieStrings.noFavorites,
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              YBox(10),
              Text(
                FoodieStrings.noFavoritesHint,
                style: TextStyle(
                  fontSize: 15,
                  color: greyColor,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
