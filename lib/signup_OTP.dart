import 'package:flutter/material.dart';

import 'Header.dart';
import 'numericPad.dart';

class Sign_OTP extends StatefulWidget {
  final String phoneNumber;
  Sign_OTP({this.phoneNumber});

  @override
  _Sign_OTPState createState() => _Sign_OTPState();
}

class _Sign_OTPState extends State<Sign_OTP> {

  String code = "";
  String phoneNumber = '';
  @override
  void initState(){
    phoneNumber=widget.phoneNumber;
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(

          child: Column(
            children: <Widget>[

              Header(),

              Expanded(
                child: Column(
                  children: <Widget>[
                   // SizedBox(height: 10.0),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 220.0),
                            child: Text('Phone Verification'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 100.0),
                            child: Text(
                              'Enter your OTP code',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 90.0,),
                            child: Text(
                              'Enter the 4-digit code send to you at',
                            //  textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Row(
                              children: <Widget>[
                                Text('your number ',
                                ),
                                Text(
                                  'did you enter the correct ',
                                  style: TextStyle(
                                    color: Color(0xFF58BE3F),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 280.0),
                            child: Text(
                              'number?',
                              style: TextStyle(
                                color: Color(0xFF58BE3F),
                                fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        buildCodeNumberBox(code.length > 0 ? code.substring(0,1):""),
                        buildCodeNumberBox(code.length > 0 ? code.substring(1,2):""),
                        buildCodeNumberBox(code.length > 0 ? code.substring(2,3):""),
                        buildCodeNumberBox(code.length > 0 ? code.substring(3,4):""),
                      ],
                    ),


                    //
                    // S

                    //padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 200.0),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Resend Code in ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 12.0),
                                ),
                                Text(
                                  '10 seconds',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Color(0xFF58BE3F),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Color(0xFFBDBDBD),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Sign_OTP()));
                            },
                          ),
                          // Text('Resend code '),
                        ],
                      ),
                    ),
                    //SizedBox(height: 5,),
                    NumericPad(
                          onNumberSelected:(value){
                            // setState(() {
                            //   if(value!=-1){
                            //     phoneNumber = phoneNumber +value.toString();
                            //   }
                            //   else{
                            //     phoneNumber = phoneNumber.substring(0, phoneNumber.length-1);
                            //   }
                            // });
                            // setState(() {
                            //   if(value != -1){
                            //     if(code.length <4){
                            //       code = code + value.toString();
                            //
                            //     }
                            //     else{
                            //       code = code.substring(0,code.length -1);
                            //     }
                            //   }
                            // });
                            print(value);
                            }
                    ),


                  ],
                ),
              ),
            ],

          ),


        ),
      ),
    );

  }

  Widget buildCodeNumberBox(String code) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 70.0,
        height: 50.0,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                // color: Color(0xFF303030),
                color: Colors.black12,
                blurRadius: 10.0,
                spreadRadius: 0.1,
                offset: Offset(0.0, 5.0),
              ),
            ],
          ),
          child: Center(
            child: Text(
              code,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFBDBDBD),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
