import 'dart:async';


import 'package:flutter/material.dart';
import 'package:loginapp11vedio/homescreen.dart';
import 'package:loginapp11vedio/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screensplash extends StatefulWidget {
  const Screensplash({Key? key}) : super(key: key);

  @override
  State<Screensplash> createState() => _ScreensplashState();
}

class _ScreensplashState extends State<Screensplash> {
  @override
  void initState() {
    checkin();
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

  Future<void> checkin() async {
    final _shred_pref = await SharedPreferences.getInstance();
    final _shrdrdprf = _shred_pref.getBool(SAVE_KEY_NAME);
    if (_shrdrdprf == null || _shrdrdprf == false) {
      goto();
    } else {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
        return homescreen();
      }), (route) => false);
    }
  }
}
