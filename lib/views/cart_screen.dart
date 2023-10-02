import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:shoe_app/Controller/cart_controller.dart';
import 'package:shoe_app/views/components/cart_list_detail.dart';
import 'package:shoe_app/views/homepage1_cont.dart';

import 'Mycart_page.dart';
import 'components/added_products_in_cart.dart';
import 'components/shoecart_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NewCartController newCartController = Get.put(NewCartController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text(
          "CART",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w400),
        ),
        leading: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: newCartController.addTobagList
              .map((e) => AddedProductInCart(
                    e,
                    product: e,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
