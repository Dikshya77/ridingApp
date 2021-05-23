import 'package:flutter/material.dart';

import 'SignupPage.dart';
class Button extends StatelessWidget {
  const Button({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    child: Text('Create Account',style: TextStyle(color:Color(0xffBDBDBD),
                        fontSize: 14.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50.0),
                    child: IconButton(
                      icon:Icon(Icons.arrow_forward,color: Color(0xFFBDBDBD),),
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>SignupPage()) );
                      },
                    ),
                  ),
                ],
              ),
      // height: 50,
      // margin: EdgeInsets.symmetric(horizontal: 50.0),
      // decoration: BoxDecoration(
      //   color: Colors.green,
      //   borderRadius: BorderRadius.circular(10.0),
      //
      // ),
      // child: Center(
      //   child: Text('Login',style: TextStyle(
      //     color: Colors.white,
      //     fontSize: 16.0,
      //     fontWeight: FontWeight.bold,
      //
      //   ),),
      // ),
        )
    );
  }
}
