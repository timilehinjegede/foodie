import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodie/core/models/models.dart';
import 'package:foodie/core/models/payment_method.dart';
import 'package:foodie/ui/widgets/widgets.dart';
import 'package:foodie/utils/utils.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FoodieStrings.profile),
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
          padding: const EdgeInsets.symmetric(
            horizontal: horizontalPadding,
          ).add(
            EdgeInsets.only(
              bottom: verticalPadding,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _AccountInformationCard(
                user: User.user,
              ),
              YBox(35),
              _PaymentMethodSection(),
              Spacer(),
              FoodieButton(
                text: FoodieStrings.update,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AccountInformationCard extends StatelessWidget {
  final User user;

  const _AccountInformationCard({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          FoodieStrings.information,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.03),
                offset: Offset(0, 10),
                blurRadius: 40.0,
              ),
            ],
            color: whiteColor,
            borderRadius: BorderRadius.circular(radius - 10),
          ),
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding / 2,
            horizontal: horizontalPadding / 2,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                user.avatarSrc,
                height: 60,
                width: 60,
              ),
              XBox(10),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          user.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          FoodieAssets.edit,
                        ),
                      ],
                    ),
                    YBox(5),
                    Text(
                      user.email,
                      style: TextStyle(
                        fontSize: 13,
                        color: greyColor,
                      ),
                    ),
                    YBox(5),
                    Text(
                      user.address,
                      style: TextStyle(
                        fontSize: 13,
                        color: greyColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _PaymentMethodSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          FoodieStrings.paymentMethod,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.03),
                offset: Offset(0, 10),
                blurRadius: 40.0,
              ),
            ],
            color: whiteColor,
            borderRadius: BorderRadius.circular(radius - 10),
          ),
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding / 2,
            horizontal: horizontalPadding / 2,
          ),
          child: _PaymentMethods(
            paymentMethods: PaymentMethod.paymentMethodsList,
          ),
        ),
      ],
    );
  }
}

class _PaymentMethods extends StatefulWidget {
  final List<PaymentMethod> paymentMethods;

  _PaymentMethods({Key key, this.paymentMethods}) : super(key: key);

  @override
  __PaymentMethodsState createState() => __PaymentMethodsState();
}

class __PaymentMethodsState extends State<_PaymentMethods> {
  PaymentMethodEnum paymentMethodEnum = PaymentMethodEnum.card;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          widget.paymentMethods.length,
          (index) => Column(
            children: [
              _PaymentEntry(
                value: PaymentMethodEnum.values[index],
                groupValue: paymentMethodEnum,
                onChanged: (value) {
                  setState(() {
                    paymentMethodEnum = value;
                  });
                },
                paymentMethod: widget.paymentMethods[index],
              ),
              index == 2
                  ? SizedBox.shrink()
                  : Divider(
                      height: 22,
                    ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PaymentEntry extends StatelessWidget {
  final Function onChanged;
  final PaymentMethodEnum value;
  final PaymentMethodEnum groupValue;
  final PaymentMethod paymentMethod;

  const _PaymentEntry(
      {Key key,
      this.onChanged,
      this.value,
      this.groupValue,
      this.paymentMethod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: primaryColor,
        ),
        XBox(10),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius - 20),
            color: paymentMethod.color,
          ),
          child: Center(
            child: Image.asset(
              paymentMethod.assetSrc,
            ),
          ),
        ),
        XBox(10),
        Text(
          paymentMethod.name,
        ),
      ],
    );
  }
}
