import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie/ui/widgets/widgets.dart';
import 'package:foodie/utils/utils.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4.0),
                        blurRadius: 30.0,
                        color: blackColor.withOpacity(0.06),
                      ),
                    ],
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(radius),
                      bottomRight: Radius.circular(radius),
                    ),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: horizontalPadding + 10),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(FoodieAssets.foodieLogo),
                      ),
                      TabBar(
                        tabs: [
                          Tab(
                            text: FoodieStrings.login,
                          ),
                          Tab(
                            text: FoodieStrings.signUp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              YBox(30),
              Expanded(
                flex: 4,
                child: TabBarView(
                  children: [
                    _LogInSection(),
                    _SignUpSection(),
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

class _LogInSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          children: [
            FoodieTextField(
              label: FoodieStrings.email,
              hint: 'example@example.com',
              keyboardType: TextInputType.emailAddress,
            ),
            YBox(25),
            FoodieTextField(
              label: FoodieStrings.password,
              hint: '**********',
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
            ),
            YBox(15),
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(radius),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5.0, 0, 5.0),
                  child: Text(
                    FoodieStrings.forgotPasscode,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            YBox(50),
            FoodieButton(
              text: FoodieStrings.login,
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, dashboardRoute, (route) => false),
            ),
          ],
        ),
      ),
    );
  }
}

class _SignUpSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          children: [
            FoodieTextField(
              label: FoodieStrings.name,
              hint: 'John Doe',
              keyboardType: TextInputType.text,
            ),
            YBox(25),
            FoodieTextField(
              label: FoodieStrings.email,
              hint: 'example@example.com',
              keyboardType: TextInputType.emailAddress,
            ),
            YBox(25),
            FoodieTextField(
              label: FoodieStrings.phone,
              hint: '+2340000000000',
              keyboardType: TextInputType.number,
            ),
            YBox(25),
            FoodieTextField(
              label: FoodieStrings.address,
              hint: '2, Test Street, Test Address, Test Country',
              keyboardType: TextInputType.emailAddress,
            ),
            YBox(25),
            FoodieTextField(
              label: FoodieStrings.password,
              hint: '**********',
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
            ),
            YBox(50),
            FoodieButton(
              text: FoodieStrings.signUp,
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, dashboardRoute, (route) => false),
            ),
          ],
        ),
      ),
    );
  }
}
