import 'package:flutter/cupertino.dart';

import '../Model/Product.dart';

class Products with ChangeNotifier {
  List<Product> _availProducts = [
    Product(
        id: '101',
        title: 'Chinese meal',
        description: 'Lovely meal',
        image: 'food1(1).jpg',
        price: 200),
    Product(
        id: '102',
        title: 'Indian meal',
        description: 'Lovely meal',
        image: 'food2(1).jpg',
        price: 100),
    Product(
        id: '103',
        title: 'African meal',
        description: 'Nigerian meal',
        image: 'food3.jpeg',
        price: 150),
    Product(
        id: '104',
        title: 'American meal',
        description: 'South American meal',
        image: 'food4.jpeg',
        price: 300),
    Product(
        id: '105',
        title: 'Korean meal',
        description: 'South Korean meal',
        image: 'food5.jpeg',
        price: 250),
    Product(
        id: '106',
        title: 'Asian meal',
        description: 'Indonisian meal',
        image: 'food6.jpg',
        price: 150),
  ];

  List<Product> get availProducts => _availProducts;

  // void addProduct(value) {
  //   _availProducts.add(value);
  //   notifyListeners();
  // }
}
