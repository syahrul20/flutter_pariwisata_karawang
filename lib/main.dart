import 'package:dicoding_flutter_submission/splashscreen/SplashMain.dart';
import 'package:dicoding_flutter_submission/splashscreen/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SplashMain());
}

var informationTextSyle = TextStyle(fontSize: 12, color: Colors.black);
var textStyleTitle = TextStyle(color: Colors.black, fontSize: 14);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
