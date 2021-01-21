import 'package:foodie/utils/utils.dart';

class Food {
  final String assetSrc;
  final String name;
  final double price;
  final String deliveryInfo;
  final String returnPolicy;
  final bool isFavorite;

  const Food({
    this.assetSrc,
    this.name,
    this.price,
    this.deliveryInfo = FoodieStrings.deliveryInfo,
    this.returnPolicy = FoodieStrings.returnPolicy,
    this.isFavorite,
  });

  static const List<Food> foodList = [
    const Food(
      assetSrc: FoodieAssets.foodOne,
      name: 'Veggie tomato mix',
      price: 1900,
      isFavorite: true,
    ),
    const Food(
      assetSrc: FoodieAssets.foodOne,
      name: 'Egg and cucumber sauce',
      price: 1900,
      isFavorite: true,
    ),
    const Food(
      assetSrc: FoodieAssets.foodOne,
      name: 'Fried chicken and chips',
      price: 1900,
      isFavorite: true,
    ),
    const Food(
      assetSrc: FoodieAssets.foodOne,
      name: 'Moi-moi and ekpa',
      price: 1900,
      isFavorite: true,
    ),
    const Food(
      assetSrc: FoodieAssets.foodOne,
      name: 'Veggie tomato mix',
      price: 1900,
      isFavorite: true,
    ),
    const Food(
      assetSrc: FoodieAssets.foodOne,
      name: 'Egg and cucumber sauce',
      price: 1900,
      isFavorite: true,
    ),
  ];
}
