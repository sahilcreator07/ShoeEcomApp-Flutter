import 'package:get/get.dart';
import 'package:shoe_app/models/products.dart';

class CartController extends GetxController {
  var numOfItems = 0.obs;

  void removeItem() {
    if (numOfItems.value > 1) {
      numOfItems.value--;
    }
  }

  void addItem(Products product) {
    numOfItems.value++;
  }
}
