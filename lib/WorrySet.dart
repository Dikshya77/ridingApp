import 'package:flutter/material.dart';
import 'package:flutter_app/signup_OTP.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


import 'Header.dart';
import 'numericPad.dart';

class WorrySet extends StatefulWidget {





  @override
  _WorrySetState createState() => _WorrySetState();
}

class _WorrySetState extends State<WorrySet> {

  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(

        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Header(),
        SizedBox(height: 20.0,),
        Column(
                  children: <Widget>[
                    SizedBox(height: 50.0),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 200.0),
                        child: Text(
                          'Dont worry!',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20.0),
                        child: TextField(
                          obscureText: _isHidden,
                          decoration: const InputDecoration(
                           hintText: 'New password',
                            suffix: InkWell(
                             // onTap:_togglePasswordView,
                              child: Icon(Icons.visibility),
                            ),


                        ),

                          ),
                      ),
                    ),


                    SizedBox(height: 30.0,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20.0),
                        child: TextField(
                          obscureText: _isHidden,
                          decoration: const InputDecoration(
                            hintText: 'Confirm password',
                            suffix: InkWell(
                              // onTap:_togglePasswordView,
                              child: Icon(Icons.visibility),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 80,),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: (){

                            },
                            color: Color(0xFF58BE3F),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Continue',style: TextStyle(
                                      color:Colors.white,
                                      fontSize: 18.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700),
                                  ),
                                  IconButton(
                                    icon:Icon(Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                    onPressed: (){
                                      //  Navigator.push(context,MaterialPageRoute(builder: (context)=>Sign_OTP()) );
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=>WorrySet()) );

                                    },
                                  ),
                                ],
                              ),
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

             ],
              ),
            ),
    );








  }

}



