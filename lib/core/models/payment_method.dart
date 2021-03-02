import 'package:flutter/material.dart';
import 'package:foodie/utils/utils.dart';

enum PaymentMethodEnum { card, bank, payPal }

class PaymentMethod {
  final String name;
  final String assetSrc;
  final Color color;

  PaymentMethod({this.name, this.assetSrc, this.color});

  static List<PaymentMethod> paymentMethodsList = [
    PaymentMethod(
      name: 'Card',
      assetSrc: FoodieAssets.card,
      color: yellowColor,
    ),
    PaymentMethod(
      name: 'Bank account',
      assetSrc: FoodieAssets.bank,
      color: pinkColor,
    ),
    PaymentMethod(
      name: 'Paypal',
      assetSrc: FoodieAssets.payPal,
      color: blueColor,
    ),
  ];
}
