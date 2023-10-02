import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:shoe_app/views/controller/controller.dart';
import 'package:shoe_app/views/components/shoecart_screen.dart';

import '../models/products.dart';

class ShoeContainerList extends StatelessWidget {
  final Products product;

  // final MyController c = Get.put(MyController());

  ShoeContainerList(this.product);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 50),
      child: Stack(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ShoeProductDetailScreen(
                          product: product,
                        )));
          },
          child: Container(
            height: 320,
            width: MediaQuery.of(context).size.width / 1.80,
            decoration: BoxDecoration(
              color: product.Containercolor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Positioned(
          top: 1,
          left: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.BrandName,
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Quicksand', fontSize: 15),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.3),
              IconButton(
                  onPressed: () {
                    // c.AddToMyWishList(ShoeContainerList(
                    //     text: text,
                    //     imagePath: imagePath,
                    //     Containercolor: Containercolor));
                  },
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                    size: 20,
                  ))
            ],
          ),
        ),
        Positioned(
            top: 40,
            left: 10,
            child: Text(
              product.text,
              style: const TextStyle(
                  color: Colors.white, fontFamily: 'Quicksand', fontSize: 20),
            )),
        RotationTransition(
          turns: const AlwaysStoppedAnimation(-30 / 360),
          child: SizedBox(
            width: 250,
            height: 300,
            child: Image.asset(product.imagePath),
          ),
        ),
        const Positioned(
            top: 255,
            right: 40,
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            )),
        Positioned(
            top: 250,
            left: 10,
            child: Text(
              product.price,
              style: TextStyle(
                  fontFamily: 'Quicksand', fontSize: 30, color: Colors.white),
            )),
      ]),
    );
  }
}
