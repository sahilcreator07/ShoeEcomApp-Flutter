import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_app/views/homepage1_cont.dart';

class FavCounterController extends GetxController {
  var numOfItems = 0.obs;
  var favList = <ShoeContainerList>[].obs;

  void addFavItemToList(ShoeContainerList product) {
    if (!favList.contains(product)) {
      favList.add(product);
      numOfItems++;
    } else {
      Get.snackbar(
        "Already Added",
        "You Already Added This Product ",
        backgroundColor: Colors.grey,
        snackPosition: SnackPosition.TOP,
        borderColor: Colors.indigo,
        borderRadius: 10,
        borderWidth: 0,
        barBlur: 0,
      );
    }
  }
}
