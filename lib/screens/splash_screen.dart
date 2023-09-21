import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:delivery_app/screens/tips/get_started.dart';
import 'package:delivery_app/screens/tips/tips_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen();

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        animationDuration: Duration(milliseconds: 1500),
        backgroundColor: Colors.red,
        splash: 'assets/images/res_white.png',
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.topToBottom,
        nextScreen: GetStarted());
  }
}
