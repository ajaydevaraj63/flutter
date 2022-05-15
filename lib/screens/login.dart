import 'package:flutter/material.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _user_cntrl = TextEditingController();

  final _pass_cntrl = TextEditingController();

  bool _datamatch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            'flutterApp',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.all(3),
              height: 700,
              width: 750,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/istockphoto-1151170153-612x612.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TextFormField(
                        controller: _user_cntrl,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: 'username'),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: TextFormField(
                          controller: _pass_cntrl,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'password'),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                              visible: !_datamatch,
                              child: Text(
                                'invalid password and email',
                                style: TextStyle(color: Colors.red),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton.icon(
                                onPressed: () {
                                  saved(context);
                                },
                                icon: Icon(Icons.check),
                                label: Text('login')),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  void saved(BuildContext ctx) {
    final _username = _user_cntrl.text;
    final _passsword = _pass_cntrl.text;
    if (_username == _passsword) {
    } else {
      setState(() {
        _datamatch = false;
      });
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(2),
          content: Text('invalid password')));

      showDialog(
          context: ctx,
          builder: (ctx1) {
            return AlertDialog(
              title: Text('error'),
              content: Text('error message'),
              actions: [
                TextButton(
                    onPressed: (() {
                      Navigator.of(ctx1).pop();
                    }),
                    child: Text('close'))
              ],
            );
          });
    }
  }
}
