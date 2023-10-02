import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_app/views/controller/controller.dart';
import 'package:shoe_app/views/homepage1_cont.dart';

class MyCartController extends StatelessWidget {
  MyCartController({super.key});
  final MyController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemCount: controller.products.length,
        itemBuilder: (BuildContext context, int index) {
          return Mycart(
            controller: controller,
            product: controller.products.key.toList()[index],
            quality: controller.products.values.toList()[index],
            index: index,
          );
        },
      ),
    );
  }
}

class Mycart extends StatelessWidget {
  final MyController controller;
  final ShoeContainerList product;
  final int quality;
  final int index;

  Mycart({
    Key? key,
    required this.controller,
    required this.product,
    required this.quality,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      color: Color.fromARGB(255, 205, 9, 240),
      child: Row(
        children: [],
      ),
    );
  }
}
