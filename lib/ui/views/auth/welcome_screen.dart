import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie/ui/widgets/button.dart';
import 'package:foodie/utils/utils.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: primaryColorDark,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                FoodieAssets.bgWelcome,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: verticalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 73,
                    width: 73,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteColor,
                    ),
                    child: Center(
                      child: Image.asset(
                        FoodieAssets.foodieLogo,
                        fit: BoxFit.cover,
                        height: 55,
                        width: 55,
                      ),
                    ),
                  ),
                  YBox(30),
                  Text(
                    FoodieStrings.wSHeading,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 55,
                    ),
                  ),
                  Spacer(),
                  FoodieButton(
                    text: FoodieStrings.getStarted,
                    onPressed: () => Navigator.pushNamed(context, authRoute),
                    isPainted: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
