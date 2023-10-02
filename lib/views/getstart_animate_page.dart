import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shoe_app/views/home_screen.dart';
import 'package:shoe_app/views/navigator_page.dart';

import 'components/button_get_started.dart';

class ShoePage extends StatefulWidget {
  @override
  _ShoePageState createState() => _ShoePageState();
}

class _ShoePageState extends State<ShoePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Lottie.network(
                  'https://assets4.lottiefiles.com/packages/lf20_pxauRD.json'),
            ),
          ),
          const SizedBox(height: 20),

          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(color: Colors.red),
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // const SizedBox(width: 20.0, height: 100.0),
                  const Text(
                    'Be',
                    style: TextStyle(
                        fontSize: 43.0,
                        color: Colors.yellow,
                        fontFamily: 'Quicksand'),
                  ),
                  const SizedBox(width: 20.0, height: 100.0),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Quicksand',
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('AWESOME'),
                        RotateAnimatedText('OPTIMISTIC'),
                        RotateAnimatedText('DIFFERENT'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // const SizedBox(
          //   height: 40,
          // ),
          // Container(
          //   height: 50,
          //   width: MediaQuery.of(context).size.width,
          //   decoration: const BoxDecoration(color: Colors.red),
          //   child: Center(
          //     child: AnimatedTextKit(
          //       animatedTexts: [
          //         TyperAnimatedText(
          //           'GENX',
          //           textStyle: const TextStyle(
          //               fontFamily: 'Nunito',
          //               fontSize: 25,
          //               // fontWeight: FontWeight.bold,
          //               color: Colors.white),
          //           speed: const Duration(milliseconds: 100),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          // Container(height: 200, width: 500, child: AnimatedButton()),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: HomePage(),
                      duration: const Duration(seconds: 1)));
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(width: 2, color: Colors.white)
                  // border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF))
                  ),
              child: Center(
                child: Text(
                  "GET STARTED",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 15, color: Colors.white, letterSpacing: 2)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
