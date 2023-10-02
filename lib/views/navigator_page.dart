import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shoe_app/utils/constants.dart';
import 'package:shoe_app/views/Mycart_page.dart';
import 'package:shoe_app/views/getstart_animate_page.dart';
import 'package:shoe_app/views/homepage1_cont.dart';
import 'package:shoe_app/views/home_screen.dart';
import 'package:shoe_app/views/cart_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;
  List<Widget> _screens = [
    HomeScreen(),
    const CartScreen(),
    Container(color: Colors.green),
  ];

  void _onItemPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(_selectedIndex,
        curve: Curves.linear, duration: const Duration(microseconds: 200));
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CustomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemPressed,
          iconSize: 27,
          bubbleCurve: Curves.linear,
          selectedColor: const Color.fromRGBO(250, 47, 101, 1),
          strokeColor: const Color.fromRGBO(250, 47, 101, 1),
          unSelectedColor: const Color(0xffacacac),
          backgroundColor: Colors.white,
          items: [
            CustomNavigationBarItem(
              icon: const Icon(CupertinoIcons.home),
            ),
            CustomNavigationBarItem(
              icon: const Icon(CupertinoIcons.shopping_cart),
            ),
            CustomNavigationBarItem(
              icon: const Icon(CupertinoIcons.person),
            ),
          ]),
    );
  }
}
