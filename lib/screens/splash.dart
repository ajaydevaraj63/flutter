import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loginapp11vedio/screens/login.dart';

class Screensplash extends StatefulWidget {
  const Screensplash({Key? key}) : super(key: key);

  @override
  State<Screensplash> createState() => _ScreensplashState();
}

class _ScreensplashState extends State<Screensplash> {
  @override
  void initState() {
    goto();
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage(
                      'assets/images/istockphoto-1151170153-612x612.jpg')))),
    );
  }

  Future<void> goto() async {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
        return login();
      }));
    });
  }
}
