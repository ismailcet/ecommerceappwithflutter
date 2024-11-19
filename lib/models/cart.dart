import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Jordan",
        price: '230',
        imagePath: 'lib/images/images.jpeg',
        description: 'Lorem ipsum odor amet, consectetuer adipiscing elit.'),
    Shoe(
        name: "Air Jordan 2",
        price: '350',
        imagePath: 'lib/images/images2.png',
        description: 'Lorem ipsum odor amet, consectetuer adipiscing elit.'),
    Shoe(
        name: "Air Jordan 3",
        price: '300',
        imagePath: 'lib/images/images3.jpg',
        description: 'Lorem ipsum odor amet, consectetuer adipiscing elit.'),
    Shoe(
        name: "Air Jordan 4",
        price: '130',
        imagePath: 'lib/images/images4.jpeg',
        description: 'Lorem ipsum odor amet, consectetuer adipiscing elit.'),
  ];
  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
