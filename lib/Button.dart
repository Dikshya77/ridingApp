import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SignupPage.dart';
class Button extends StatefulWidget {


  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: MaterialButton(
                  height: 60,
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>SignupPage()) );

                    },
                  color: Color(0xFFFFFFFF),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Create Account',style: TextStyle(color:Color(0xffBDBDBD),
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700),
                  ),
                  IconButton(
                    icon:Icon(Icons.arrow_forward,color: Color(0xFFBDBDBD),),
                  ),
                ],
              ),

        )
    );
  }
}
