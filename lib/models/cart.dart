import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{

  List<Shoe> Shop=[
    Shoe(
    name: "kyrie Infinity", 
    description:"better agility",
    price: "£300",
    imagePath:'lib/images/kyrie.jpeg'),
     Shoe(
    name: "Kai Anta", 
    description:"better design",
    price: "£200",
    imagePath:'lib/images/kai.jpeg'),
     Shoe(
    name: "nike KD 13", 
    description:"better for ankles",
    price: "£350",
    imagePath:'lib/images/nike.png'),
     Shoe(
    name: "PG 6", 
    description:"smooth performance",
    price: "£400",
    imagePath:'lib/images/pg.jpeg')

  ];

  List<Shoe> UserCart=[];

  List<Shoe> getShoeList(){
  return Shop;
  notifyListeners();
  }

  List<Shoe> getUserCart(){
    return UserCart;
  }

  void addItemToCart(Shoe shoe){
    UserCart.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe){
   UserCart.remove(shoe);
   notifyListeners();
  }
}