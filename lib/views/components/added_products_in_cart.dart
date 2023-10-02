import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:shoe_app/models/products.dart';

class AddedProductInCart extends StatelessWidget {
  const AddedProductInCart(Products e, {super.key, required this.product});
  final Products product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.96,
        height: MediaQuery.of(context).size.height * 0.32,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                height: 170,
                width: 150,
                decoration: BoxDecoration(color: Colors.white),
                child: Image.asset(product.imagePath),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, right: 50),
              child: Column(
                children: [
                  Text(
                    product.text,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text(
                    product.price,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 65),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Buyy Now',
                      style: TextStyle(color: Colors.black),
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
