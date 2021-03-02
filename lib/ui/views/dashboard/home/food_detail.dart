import 'package:flutter/material.dart';
import 'package:foodie/core/models/models.dart';
import 'package:foodie/ui/widgets/widgets.dart';
import 'package:foodie/utils/utils.dart';

class FoodDetail extends StatefulWidget {
  final Food food;
  final String tag;

  const FoodDetail({Key key, this.food, this.tag}) : super(key: key);

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  PageController _pageController;
  int _numOfPages = 4;
  int _currentPage = 0;

  final TextStyle _helperStyle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  final TextStyle _contentStyle = TextStyle(
    fontSize: 15,
    color: greyColor,
  );

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numOfPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
        color: isActive ? primaryColor : greyColor,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: horizontalPadding,
            ),
            child: Icon(
              Icons.favorite_border_rounded,
              color: blackColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding).add(
          EdgeInsets.only(
            bottom: verticalPadding,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 240,
              width: double.infinity,
              child: Hero(
                tag: widget.tag,
                child: PageView(
                  onPageChanged: (value) {
                    setState(
                      () => _currentPage = value,
                    );
                  },
                  children: [
                    ...List.generate(
                      4,
                      (index) => Image.asset(
                        widget.food.assetSrc,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // page view indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ..._buildPageIndicator(),
              ],
            ),

            YBox(30),

            Align(
              child: Text(
                widget.food.name,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Align(
              child: Text(
                'N${widget.food.price}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: primaryColor,
                ),
              ),
            ),
            YBox(30),
            Text(
              FoodieStrings.deliveryInfoHelper,
              style: _helperStyle,
            ),
            YBox(5),
            Text(
              FoodieStrings.deliveryInfo,
              style: _contentStyle,
            ),
            YBox(20),
            Text(
              FoodieStrings.returnPolicyHelper,
              style: _helperStyle,
            ),
            YBox(5),
            Text(
              FoodieStrings.returnPolicy,
              style: _contentStyle,
            ),

            Spacer(),

            FoodieButton(
              text: FoodieStrings.addToCart,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
