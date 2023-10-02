import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BrandListView extends StatelessWidget {
  const BrandListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () {
              // TODO: Implement brand selection logic
            },
            child: Image.asset(
              'assets/images/nike.png',
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(width: 40),
          GestureDetector(
            onTap: () {
              // TODO: Implement brand selection logic
            },
            child: Image.asset(
              'assets/images/louis_vuitton-removebg-preview.png',
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(width: 40),
          GestureDetector(
            onTap: () {
              // TODO: Implement brand selection logic
            },
            child: Image.asset(
              'assets/images/adidas.png',
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(width: 40),
          GestureDetector(
            onTap: () {
              // TODO: Implement brand selection logic
            },
            child: Image.asset(
              'assets/images/pumalogo.png',
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(width: 40),
          GestureDetector(
            onTap: () {
              // TODO: Implement brand selection logic
            },
            child: Image.asset(
              'assets/images/adidas.png',
              width: 100,
              height: 100,
            ),
          ),
          // Add more brands here...
        ],
      ),
    );
  }
}
