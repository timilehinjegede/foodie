import 'package:flutter/material.dart';
import 'package:foodie/ui/widgets/widgets.dart';
import 'package:foodie/utils/utils.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FoodieStrings.order),
        elevation: 0.0,
        backgroundColor: bgColor,
        textTheme: TextTheme(
          headline6: Theme.of(context).textTheme.headline6.copyWith(
                color: blackColor,
              ),
        ),
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
              Spacer(),
              Image.asset(
                FoodieAssets.shoppingCart,
              ),
              YBox(20),
              Text(
                FoodieStrings.noOrder,
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
              YBox(10),
              Text(
                FoodieStrings.noOrdersHint,
                style: TextStyle(
                  fontSize: 17,
                  color: greyColor,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              FoodieButton(
                text: FoodieStrings.startOrdering,
                onPressed: () {},
              ),
              YBox(40),
            ],
          ),
        ),
      ),
    );
  }
}
