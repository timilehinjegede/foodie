import 'package:foodie/utils/utils.dart';

class Food {
  final String assetSrc;
  final String name;
  final double price;
  final String deliveryInfo;
  final String returnPolicy;
  final bool isFavorite;
  final String foodCategory;

  const Food({
    this.assetSrc,
    this.name,
    this.price,
    this.deliveryInfo = FoodieStrings.deliveryInfo,
    this.returnPolicy = FoodieStrings.returnPolicy,
    this.isFavorite,
    this.foodCategory,
  });

  static const List<Food> foodList = [
    const Food(
      assetSrc: FoodieAssets.foodOne,
      name: 'Veggie tomato mix',
      price: 1900,
      isFavorite: true,
      foodCategory: 'Foods',
    ),
    const Food(
      assetSrc: FoodieAssets.foodTwo,
      name: 'Egg and cucumber sauce',
      price: 1900,
      isFavorite: true,
      foodCategory: 'Foods',
    ),
    const Food(
      assetSrc: FoodieAssets.foodThree,
      name: 'Fried chicken and chips',
      price: 1900,
      isFavorite: true,
      foodCategory: 'Others',
    ),
    const Food(
      assetSrc: FoodieAssets.foodFour,
      name: 'Moi-moi and ekpa',
      price: 1900,
      isFavorite: true,
      foodCategory: 'Others',
    ),
    const Food(
      assetSrc: FoodieAssets.foodFour,
      name: 'Moi-moi and ekpa',
      price: 1900,
      isFavorite: true,
      foodCategory: 'Foods',
    ),
    const Food(
      assetSrc: FoodieAssets.foodFour,
      name: 'Moi-moi and ekpa',
      price: 1900,
      isFavorite: true,
      foodCategory: 'Snacks',
    ),
    const Food(
      assetSrc: FoodieAssets.foodFive,
      name: 'Veggie tomato mix',
      price: 1900,
      isFavorite: true,
      foodCategory: 'Drinks',
    ),
    const Food(
      assetSrc: FoodieAssets.foodSix,
      name: 'Egg and cucumber sauce',
      price: 1900,
      isFavorite: true,
      foodCategory: 'Food',
    ),
    const Food(
      assetSrc: FoodieAssets.foodSix,
      name: 'Egg and cucumber sauce',
      price: 1900,
      isFavorite: true,
      foodCategory: 'Drinks',
    ),
    const Food(
      assetSrc: FoodieAssets.foodSix,
      name: 'Egg and cucumber sauce',
      price: 1900,
      isFavorite: true,
      foodCategory: 'Sauce',
    ),
  ];
}
