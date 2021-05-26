import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/signupdetail.dart';
import 'package:flutter_app/worry.dart';
import 'Header.dart';
import 'SignupPage.dart';
import 'constnts.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Header(),


            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 60.0),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Welcome Back!',
                    style:klabelTextStyle,
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),


                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    decoration: const InputDecoration(
                        hintText: 'Phone Number'
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  MaterialButton(
                    height: 20,
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Worry()) );
                    },
                    child: Text('Forget Password?',style: k1labelTextStyle,),
                  ),
                  SizedBox(height: 20.0,),
                  MaterialButton(
                    height: 60,
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>CreateAcc ()) );
                    },
                    color: Color(0xFF58BE3F),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Login',style: TextStyle(
                            color:Color(0xffF9F9F9),
                            fontSize: 14.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon:Icon(Icons.arrow_forward,color: Color(0xFFFFFFFF),),

                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  MaterialButton(
                    height: 20,
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SignupPage()));
                    },
                    child: Text('Or Create My account',style: TextStyle(fontSize: 14.0,color:Color(0xFF505050),fontFamily:'Poppins'),),
                  ),


                ],
              ),
            ),


                // child:
          ],
        ),
      ),

    );
  }
}

