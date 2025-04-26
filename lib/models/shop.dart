import 'package:bubble_tea_app/models/drink.dart';
import 'package:flutter/material.dart';

class BubbleTeaShop extends ChangeNotifier{

  // list of drinks for sale
  final List<Drink> _shop = [
    // pearl milk tea
    Drink(name: 'Pearl Milk Tea', 
    price: '300', 
    imagePath: 'lib/images/bubble-tea.png',
    ),
  ]; 

  // list of drinks in user cart
  final List<Drink> _userCart = [];

  // get drinks for sale
  List<Drink> get shop => _shop;

  // get user cart
  List<Drink> get cart => _userCart;

  // add drink to cart
  void addToCart (Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  // remove drink from cart
  void removeFromCart (Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}