import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'SignupPage.dart';
import 'loginPage.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hello, nice to meet you!',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFF303030),
                ),
              ),

              Text(
                'Get a experience',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Color(0xFF303030),
                    fontWeight: FontWeight.w500),
              ),

              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/pic.png'),
                  ),
                ),
              ),
              MaterialButton(

                height: 60,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                color: Color(0xFF58BE3F),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Login with Phone",
                      style: TextStyle(
                          color: Color(0xffF9F9F9),
                          fontSize: 14.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Color(0xFFFFFFFF),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              //SizedBox(height: 20.0),
              MaterialButton(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                height: 20,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                },
                child: Text(
                  'Or Create My account',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF505050),
                      fontFamily: 'Poppins'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
