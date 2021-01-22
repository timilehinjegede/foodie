import 'package:flutter/material.dart';
import 'package:foodie/utils/utils.dart';

class OffersAndPromoScreen extends StatelessWidget {
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
              Text(
                FoodieStrings.offersAndPromo,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Spacer(),
              Text(
                FoodieStrings.noOffersAndPromo,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              YBox(10),
              Text(
                FoodieStrings.noOffersAndPromoHint,
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
