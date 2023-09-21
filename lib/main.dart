import 'package:delivery_app/screens/home_screen.dart';
import 'package:delivery_app/screens/splash_screen.dart';
import 'package:delivery_app/screens/tips/get_started.dart';
import 'package:delivery_app/screens/tips/tips_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DeliveryApp());
}

class DeliveryApp extends StatefulWidget {
  DeliveryApp();

  @override
  State<DeliveryApp> createState() => _DeliveryAppState();
}

class _DeliveryAppState extends State<DeliveryApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, fontFamily: 'Titillium'),
      home: HomeScreen(),
    );
  }
}
