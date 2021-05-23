import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Header.dart';
import 'package:flutter_app/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/signup_OTP.dart';
import 'package:flutter_app/signupdetail.dart';
import 'package:flutter_app/worry.dart';

import 'cardconfirm.dart';
import 'forgetpswd.dart';
class SignupPage extends StatefulWidget {


  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  String phoneNumber='';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: SafeArea(




        child: Column(

          children: <Widget>[
            Header(),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0),
                        child: Text('Hello, nice to meet you!',
                          // textAlign: TextAlign.right,

                          style: TextStyle(fontSize: 14.0,
                            color: Color(0xFF303030),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Text('Join our Company!',
                          //textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 24.0,
                              color: Color(0xFF303030),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
  ],
                  ),
                ),


                  Container(
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal:20.0),
                     child: TextField(
                       decoration: const InputDecoration(
                           hintText: 'phoneNumber',
                       ),
                     ),
                   ),
                 ),






                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 70.0),
                        child: Text('By creating an account, you agree to our',style: TextStyle(fontSize: 14.0),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            Text('Terms of Service ',style: TextStyle(
                                fontSize: 14.0,color:Color(0xFF24272B),
                                fontWeight: FontWeight.bold),),
                            Text('and ',style: TextStyle(
                                fontSize: 14.0,color:Color(0xFF24272B),),),
                            Text('Privacy Policy',style: TextStyle(
                                fontSize: 14.0,color:Color(0xFF24272B),
                                fontWeight: FontWeight.bold),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: (){

                        },
                        color: Color(0xFFFFFFFF),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Continue',style: TextStyle(color:Color(0xffBDBDBD),
                                  fontSize: 14.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 125.0),
                              child: Padding(
                                padding: const EdgeInsets.only(left:50.0),
                                child: IconButton(
                                  icon:Icon(Icons.arrow_forward,color: Color(0xFFBDBDBD),),
                                  onPressed: (){
                                  // Navigator.push(context,MaterialPageRoute(builder: (context)=>CreateAcc()) );
                                   Navigator.push(context,MaterialPageRoute(builder: (context)=>Sign_OTP()) );

                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    //
                    //

                  ],
                ),

              ],

    ),


        ),

      ],
       ),
      ),

    );
  }
}

