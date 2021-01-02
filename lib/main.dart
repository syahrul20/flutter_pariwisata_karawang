import 'package:dicoding_flutter_submission/splashscreen/SplashMain.dart';
import 'package:dicoding_flutter_submission/splashscreen/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SplashMain());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
