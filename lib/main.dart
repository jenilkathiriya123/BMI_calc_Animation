import 'package:flutter/material.dart';
import 'Home_Page.dart';
import 'Splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomePage(),
        'Screen' : (context) => Splashscreen(),
      },
      initialRoute: 'Screen',
    ),
  );
}

