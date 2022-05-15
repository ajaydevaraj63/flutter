import 'package:flutter/material.dart';
import 'package:loginapp11vedio/screens/login.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter'),
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: SafeArea(child: Text('home')),
    );
  }

  void signout(BuildContext cxt) {
    Navigator.of(cxt).pushAndRemoveUntil(MaterialPageRoute(builder: (cxt) {
      return login();
    }), (route) => false);
  }
}
