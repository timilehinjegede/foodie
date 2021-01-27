import 'package:flutter/material.dart';
import 'package:foodie/core/models/food.dart';
import 'package:foodie/ui/widgets/widgets.dart';
import 'package:foodie/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                FoodieStrings.hSHeading,
                style: TextStyle(
                  fontSize: 34,
                ),
              ),
            ),
            YBox(40),
            SearchTextField(),
            YBox(40),
            Padding(
              padding: const EdgeInsets.only(left: horizontalPadding),
              child: TabBar(
                onTap: (index) {
                  setState(() {
                    _index = index;
                  });
                },
                isScrollable: true,
                tabs: [
                  ...List.generate(
                    5,
                    (index) => Tab(
                      text: tabBarTitle[index],
                    ),
                  ),
                ],
              ),
            ),
            YBox(25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Row(
                children: [
                  ...List.generate(
                    Food.foodList
                        .where(
                            (food) => food.foodCategory == tabBarTitle[_index])
                        .length,
                    (index) => _FoodEntry(
                      food: Food.foodList[index],
                    ),
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

class _FoodEntry extends StatelessWidget {
  final Food food;

  const _FoodEntry({Key key, this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: transparentColor,
      highlightColor: transparentColor,
      onTap: () => Navigator.pushNamed(
        context,
        foodDetailRoute,
        arguments: {'food': food},
      ),
      child: Container(
        height: 310,
        width: 220,
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding / 2),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(radius),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 30.0),
                      blurRadius: 60,
                      color: blackAccentColor.withOpacity(0.01),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding / 2, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      food.name,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    YBox(15),
                    Text(
                      'N${food.price}',
                      style: TextStyle(
                        fontSize: 15,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              food.assetSrc,
              height: 240,
              width: 240,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
