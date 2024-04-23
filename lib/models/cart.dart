import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '236',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/1.png',
    ),
    Shoe(
        name: 'Air Jordan',
        price: '220',
        description:
            'You\'ve got the hops and the speed-lace up in shoes that enhance your activity',
        imagePath: 'lib/images/2.png'),
    Shoe(
        name: 'KD Treys',
        price: '240',
        description:
            'A secure midfoot strap is suitted for scoring binges and defensive',
        imagePath: 'lib/images/3.png'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        description:
            'Bouncy cushioning is paired with soft yet supportive foam for rest your feet',
        imagePath: 'lib/images/4.png'),
    Shoe(
        name: 'Air Jordan 2',
        price: '225',
        description:
            'Limited edition created with the best inspiration to boost your confidence',
        imagePath: 'lib/images/5.png')
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
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
