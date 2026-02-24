import 'package:flutter/material.dart';
import 'package:sneakers/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Force 1',
      price: '120',
      imagePath: 'lib/images/test.png',
      description: 'Classic Air Force 1',
    ),
    Shoe(
      name: 'Air Force 1',
      price: '120',
      imagePath: 'lib/images/test.png',
      description: 'Classic Air Force 1',
    ),
    Shoe(
      name: 'Air Force 1',
      price: '120',
      imagePath: 'lib/images/test.png',
      description: 'Classic Air Force 1',
    ),
    Shoe(
      name: 'Air Force 1',
      price: '120',
      imagePath: 'lib/images/test.png',
      description: 'Classic Air Force 1',
    ),
    Shoe(
      name: 'Air Force 1',
      price: '120',
      imagePath: 'lib/images/test.png',
      description: 'Classic Air Force 1',
    ),
  ];

  // list of items in cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemsFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
