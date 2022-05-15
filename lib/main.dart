import 'package:flutter/material.dart';
import 'package:loginapp11vedio/screens/splash.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.black),
      home: Screensplash(),
    );
  }
}