import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/home.dart';

import 'package:page_transition/page_transition.dart';

class splashscreen extends StatefulWidget {
  splashscreen({Key? key}) : super(key: key);
  static const routeName = '/splach';
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splashIconSize: 200,
        splash: 'assets/DeepScope-Logo.png',
        duration: 2500,
        nextScreen: homepage(),
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
        backgroundColor: Colors.black,
      ),
    );
  }
}
