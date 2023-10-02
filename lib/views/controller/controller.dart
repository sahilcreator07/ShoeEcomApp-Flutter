import 'package:get/get.dart';

import '../homepage1_cont.dart';

class MyController extends GetxController {
  var _products = {}.obs;

  void AddToMyWishList(ShoeContainerList product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar("product added", "in the cart",
        snackPosition: SnackPosition.TOP, duration: Duration(seconds: 2));
  }

  // get products
  get products => _products;
}
