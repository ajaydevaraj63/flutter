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
  final _formkey = GlobalKey<FormState>();

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
                key: _formkey,
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'error1';
                          } else {
                            return null;
                          }
                        },
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'error1';
                            } else {
                              return null;
                            }
                            ////if (_datamatch) {
                            //  return null;
                            //// } else {
                            //   return 'error';
                            //}
                          },
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
                                  if (_formkey.currentState!.validate())
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
      print('usr pswd match');
    } else {
      print('missmatch');
      // setState(() {
      // _datamatch = false;
      //});
    }
  }
}
