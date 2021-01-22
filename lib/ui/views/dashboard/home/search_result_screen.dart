import 'package:flutter/material.dart';
import 'package:foodie/core/models/food.dart';
import 'package:foodie/utils/utils.dart';

class SearchResultScreen extends StatelessWidget {
  final String searchString;
  final List<Food> foundFoodList;

  const SearchResultScreen(
      {Key key, @required this.searchString, this.foundFoodList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(searchString),
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
      body: foundFoodList.isNotEmpty
          ? _SearchFound(
              foodList: foundFoodList,
            )
          : _SearchNotFound(),
    );
  }
}

class _SearchFound extends StatelessWidget {
  final List<Food> foodList;

  const _SearchFound({Key key, this.foodList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _SearchNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              FoodieAssets.notFound,
            ),
            YBox(20),
            Text(
              FoodieStrings.searchNotFound,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            YBox(10),
            Text(
              FoodieStrings.searchNotFoundHint,
              style: TextStyle(
                fontSize: 17,
                color: greyColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
