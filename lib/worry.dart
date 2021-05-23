import 'package:flutter/material.dart';
import 'package:flutter_app/signup_OTP.dart';


import 'Header.dart';
import 'WorrySet.dart';
import 'numericPad.dart';

class Worry extends StatefulWidget {


  @override
  _WorryState createState() => _WorryState();
}

class _WorryState extends State<Worry> {

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
                     child: Column(
                  children: <Widget>[
                  SizedBox(height: 50.0),
                  Container(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 200.0),
                            child: Text('You have a problem?!',style: TextStyle(
                              fontSize: 14.0,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 200.0),
                            child: Text(
                              'Dont worry!',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),



                        ],
                      ),

                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20.0),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your phone number',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Container(
                    child:Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: (){

                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(

                                children: <Widget>[
                                  Text('No problem?',style: TextStyle(
                                      color:Colors.black,
                                      fontSize: 18.0,
                                      fontFamily: 'Poppins',
                                     ),
                                  ),
                                  Text('Sign In?',style: TextStyle(
                                      color:Colors.black,
                                      fontSize: 18.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold),
                                  ),


                                ],
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
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
                  ),

            ],
        ),
        //



  ],
      ),
      ),
    );

  }


}
