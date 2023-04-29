import 'package:coffee_app/models/coffee_shop.dart';
import 'package:coffee_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

mixin HasHeight<Q extends num> {
  Q get height;
}

typedef HasIntHeight = HasHeight<int>;
typedef HasDoubleHeight = HasHeight<double>;

class Human with HasDoubleHeight {
  @override
  final double height;
  const Human({required this.height});
}

class Dog with HasIntHeight {
  @override
  final int height;
  const Dog({required this.height});
}
