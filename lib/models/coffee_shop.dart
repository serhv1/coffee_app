import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list

  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'Black coffee',
      price: '\$4',
      imagePath: 'lib/images/coffee.png',
    ),
    // latte
    Coffee(
      name: 'Latte',
      price: '\$5',
      imagePath: 'lib/images/latte.png',
    ),
    // espresso
    Coffee(
      name: 'Espresso',
      price: '\$3',
      imagePath: 'lib/images/espresso.png',
    ),
    // iced coffee
    Coffee(
      name: 'Iced coffee',
      price: '\$4',
      imagePath: 'lib/images/iced.png',
    ),
  ];

  // user cart
  final List<Coffee> _userCart = [];
  // get coffee list
  List<Coffee> get coffeeShop => _shop;
  // get user cart
  List<Coffee> get userCart => _userCart;
  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
