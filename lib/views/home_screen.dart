import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:shoe_app/models/products.dart';
import 'package:shoe_app/views/controller/controller.dart';
import 'package:shoe_app/views/components/BrandList.dart';
import 'package:shoe_app/views/components/newarrivals.dart';
import 'package:shoe_app/views/navigator_page.dart';

import '../models/new_arrivals.dart';
import '../utils/constants.dart';
import 'homepage1_cont.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    final Products product;
    print(productList[0].imagePath);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            "GENX",
            style: TextStyle(
                letterSpacing: 4,
                color: Colors.white,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w400),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: IconButton(
              icon: const FaIcon(
                CupertinoIcons.search,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 4),
            child: IconButton(
              icon: const FaIcon(
                CupertinoIcons.bell,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              // color: Colors.amber,
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: BrandListView(),
            ),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.width * 0.85,
              width: MediaQuery.of(context).size.width,
              // color: Colors.black,
              child: Expanded(
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: productList
                        .map(
                          (e) => ShoeContainerList(
                            e,
                          ),
                        )
                        .toList()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'More',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.list))
              ],
            ),
            Container(
              height: 270,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 246, 20, 4),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: newArrivalProducts
                    .map((product) => NewArivals(
                          product,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
