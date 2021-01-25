import 'package:foodie/utils/utils.dart';

class User {
  final String name;
  final String email;
  final String address;
  final String avatarSrc;

  User({this.name, this.email, this.address, this.avatarSrc});

  static User get user => User(
        name: 'Marvis Ighedosa',
        email: 'dosamarvis@gmail.com',
        address: 'No 15 uti street off ovie palace road effurun delta state',
        avatarSrc: FoodieAssets.person,
      );
}
