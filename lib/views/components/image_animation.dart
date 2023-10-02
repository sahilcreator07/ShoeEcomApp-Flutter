import 'package:flutter/material.dart';

class ShoeImageScreen extends StatefulWidget {
  @override
  _ShoeImageScreenState createState() => _ShoeImageScreenState();
}

class _ShoeImageScreenState extends State<ShoeImageScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  List<String> _shoeImages = [
    'assets/images/nike1.png',
    'assets/images/nike2.png',
    'assets/images/nike3.png',
  ];
  int _currentIndex = 0;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _playFadeAnimation() {
    _animationController.reset();
    _animationController.forward();
  }

  void _changeImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _shoeImages.length;
    });
    _playFadeAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeImage,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: AnimatedBuilder(
            animation: _fadeAnimation,
            builder: (BuildContext context, Widget? child) {
              return Opacity(
                opacity: _fadeAnimation.value,
                child: Image.asset(
                  _shoeImages[_currentIndex],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
