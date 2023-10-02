import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:shoe_app/utils/constants.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shoe_app/views/cart_screen.dart';
import 'package:shoe_app/views/controller/productCart_controller.dart';
import '../../Controller/cart_controller.dart';
import '../../models/products.dart';
import '../homepage1_cont.dart';

class ShoeProductDetailScreen extends StatelessWidget {
  final Products product;
  // CartController cartController = Get.find();
  // FavCounterController favCounterController = Get.find();

  ShoeProductDetailScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    final NewCartController cartController = Get.put(NewCartController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: product.Containercolor,
        title: const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            "Product Details",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w400),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: IconButton(
              icon: badges.Badge(
                badgeStyle: badges.BadgeStyle(badgeColor: Colors.red),
                badgeContent:
                    Obx(() => Text(cartController.favCount.value.toString())),
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 4),
            child: IconButton(
              icon: badges.Badge(
                badgeContent: Obx(
                    () => Text(cartController.addTobagList.length.toString())),
                badgeStyle: badges.BadgeStyle(badgeColor: Colors.red),
                child: FaIcon(
                  CupertinoIcons.shopping_cart,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                    color: product.Containercolor,
                  ),
                  child: Stack(children: [
                    RotationTransition(
                      turns: const AlwaysStoppedAnimation(-30 / 360),
                      child: Center(
                        child: Image.asset(
                          product.imagePath, // Replace with your shoe image URL
                          width: 300,
                          height: 220,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                product.text,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Men\'s Running Shoes',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                product.price,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Size: 10',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Description:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Designed for ultimate comfort and performance. It features a cushioned midsole, breathable upper, and durable outsole for optimal running experience.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: product.Containercolor),
                      child: const Icon(Icons.add)),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8),
                    child: Text(
                      "00",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        // cartController.removeItem();
                      },
                      style: ElevatedButton.styleFrom(
                          primary: product.Containercolor),
                      child: const Icon(Icons.remove)),
                  Padding(
                    padding: const EdgeInsets.only(left: 150.0),
                    child: GestureDetector(
                      onTap: () {
                        cartController.favCounter(product);
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(60)),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  cartController.addInBag(product);
                },
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 40,
                    decoration: BoxDecoration(
                        color: product.Containercolor,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      'ADD TO BAG',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
