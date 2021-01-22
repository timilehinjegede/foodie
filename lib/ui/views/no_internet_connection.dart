import 'package:flutter/material.dart';
import 'package:foodie/ui/widgets/widgets.dart';
import 'package:foodie/utils/utils.dart';

class NoInternetConnection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset(
                FoodieAssets.noInternet,
              ),
              YBox(20),
              Text(
                FoodieStrings.noInternet,
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
              YBox(10),
              Text(
                FoodieStrings.noInternetHint,
                style: TextStyle(
                  fontSize: 17,
                  color: greyColor,
                ),
                textAlign: TextAlign.center,
              ),
              YBox(50),
              FoodieButton(
                text: FoodieStrings.tryAgain,
                onPressed: () {},
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
