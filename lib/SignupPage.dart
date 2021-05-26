import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/signup_OTP.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String phoneNumber = '';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Header(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Hello, nice to meet you!',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF303030),
                  ),
                ),
                Text(
                  'Join our Company!',
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xFF303030),
                      fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'phoneNumber',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'By creating an account, you agree to our',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Row(
                        children: [
                          Text(
                            'Terms of Service ',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF24272B),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'and ',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xFF24272B),
                            ),
                          ),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF24272B),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  height: 60,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Sign_OTP()));
                  },
                  color: Color(0xFFFFFFFF),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Continue',
                        style: TextStyle(
                            color: Color(0xffBDBDBD),
                            fontSize: 14.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Color(0xFFBDBDBD),
                        ),

                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
