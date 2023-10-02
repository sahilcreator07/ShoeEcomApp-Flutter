import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../models/products.dart';

class NewArivals extends StatelessWidget {
  final Products products;

  NewArivals(this.products);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10),
      child: Stack(children: [
        Container(
          height: 250,
          width: MediaQuery.of(context).size.width / 1.60,
          decoration: BoxDecoration(
            color: products.Containercolor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          top: 30,
          left: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                products.text,
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Quicksand', fontSize: 15),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.3),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                    size: 20,
                  ))
            ],
          ),
        ),
        Positioned(
            top: 215,
            left: 10,
            child: Text(
              products.text,
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Quicksand', fontSize: 20),
            )),
        RotationTransition(
          turns: AlwaysStoppedAnimation(-30 / 360),
          child: SizedBox(
            width: 200,
            height: 250,
            child: Image.asset(products.imagePath),
          ),
        ),
        const Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            )),
        Positioned(
            left: 5,
            top: 0,
            child: RotatedBox(
              quarterTurns: -1,
              child: Container(
                height: 25,
                width: 60,
                child: Center(
                    child: Text(
                  'NEW',
                  style:
                      TextStyle(color: Colors.white, fontFamily: 'Quicksand'),
                )),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 244, 28, 12),
                ),
              ),
            ))
      ]),
    );
  }
}
