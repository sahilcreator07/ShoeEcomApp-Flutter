import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/products.dart';

class NewCartController extends GetxController {
  List<Products> addTobagList = <Products>[].obs;
  List likeItemCount = <Products>[].obs;
  RxInt totalPrice = 0.obs;
  RxInt favCount = 0.obs;

  void addInBag(Products product) {
    addTobagList.add(product);
  }

  int badgeCount() {
    return productList.length;
  }

  void totalCost() {
    addTobagList.map((product) {
      totalPrice.value += product.price as int;
    });
  }

  void favCounter(Products product) {
    if (!likeItemCount.contains(product)) {
      likeItemCount.add(product);
      favCount++;
    } else {
      Get.snackbar("Product Already Added", "You Already Liked This Product!",
          backgroundColor: Colors.white,
          snackPosition: SnackPosition.TOP,
          borderRadius: 10,
          barBlur: 0);
    }
  }
}
