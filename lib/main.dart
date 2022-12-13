import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:caffe/pages/home.dart';
import 'package:caffe/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange
      ),
      home: AnimatedSplashScreen(splash: Splash(), nextScreen: HomePage()),
    );
  }
}
