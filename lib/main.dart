import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoe_app/views/controller/fav_caontainer_controller.dart';
import 'package:shoe_app/views/controller/productCart_controller.dart';

import 'package:shoe_app/views/getstart_animate_page.dart';
import 'package:shoe_app/views/navigator_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  CartController cartController = Get.put(CartController());
  FavCounterController favCounterController = Get.put(FavCounterController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoePage(),
    );
  }
}
