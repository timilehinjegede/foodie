import 'package:flutter/material.dart';
import 'package:foodie/ui/widgets/widgets.dart';
import 'package:foodie/utils/utils.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: horizontalPadding),
            child: ImageIcon(
              AssetImage(
                FoodieAssets.menu,
              ),
              color: blackColor,
            ),
          ),
          backgroundColor: transparentColor,
          elevation: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: horizontalPadding),
              child: ImageIcon(
                AssetImage(
                  FoodieAssets.shoppingCart,
                ),
                color: blackColor,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(
              () {
                _currentIndex = index;
                if (index != 0)
                  Navigator.pushNamed(context, bottomNavRoutes[index]);
              },
            );
          },
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          backgroundColor: bgColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            ...List.generate(
              bottomNavWidgets.length,
              (index) => BottomNavigationBarItem(
                icon: Image.asset(bottomNavAssets[index]),
                label: bottomNavTitle[index],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
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
            ],
          ),
        ),
      ),
    );
  }
}
