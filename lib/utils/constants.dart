import 'package:flutter/material.dart';
import 'package:foodie/ui/views/dashboard/account/account_screen.dart';
import 'package:foodie/ui/views/dashboard/favorites/favorites_screen.dart';
import 'package:foodie/ui/views/dashboard/history/history_screen.dart';
import 'package:foodie/ui/views/dashboard/home/home_screen.dart';
import 'package:foodie/utils/utils.dart';

const double horizontalPadding = 30.0;
const double verticalPadding = 50.0;
const double radius = 30.0;

const List<String> drawerItems = [
  'Profile',
  'Orders',
  'Offers and Promo',
  'Privacy Policy',
  'Security'
];

const List<String> tabBarTitle = [
  'Foods',
  'Drinks',
  'Snacks',
  'Sauce',
  'Others'
];

final List<Widget> bottomNavWidgets = [
  HomeScreen(),
  FavoritesScreen(),
  AccountScreen(),
  HistoryScreen(),
];

const List<String> bottomNavAssets = [
  FoodieAssets.home,
  FoodieAssets.favorites,
  FoodieAssets.account,
  FoodieAssets.history
];

const List<String> bottomNavTitle = [
  'Home',
  'Favorites',
  'Profile',
  'History',
];
const List<String> bottomNavRoutes = [
  'Home',
  '/favoritesRoute',
  '/accountRoute',
  '/historyRoute',
];
