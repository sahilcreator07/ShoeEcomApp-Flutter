import 'package:flutter/material.dart';

class Products {
  final String BrandName;
  final String text;
  final String imagePath;
  final Color Containercolor;
  final String price;

  Products(this.text, this.imagePath, this.Containercolor, this.price,
      this.BrandName);
}

List<Products> productList = [
  Products('AIR MAX', 'assets/images/nike1.png',
      Color.fromARGB(255, 242, 22, 7), '\$300', 'NIKE'),
  Products('Louis Vuitton', 'assets/images/lvshoe1-removebg-preview.png',
      Colors.black, '\$1000', 'LVHM'),
  Products('STAN SMITH', 'assets/images/adidas1-removebg-preview.png',
      Colors.green, '\$500', 'ADIDAS'),
  Products('JORDAN', 'assets/images/nike7.png', Colors.black, '\$200', 'NIKE'),
];
