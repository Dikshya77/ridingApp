import 'package:flutter/material.dart';

import 'Button.dart';
import 'InputField.dart';
enum Createid{
  free,business
}
class InputWrapper extends StatefulWidget {


  @override
  _InputWrapperState createState() => _InputWrapperState();
}

class _InputWrapperState extends State<InputWrapper> {
  @override
  Widget build(BuildContext context) {
    Createid selectedCreateid;
    const activeColor = Colors.green;
    const inactiveColor = Colors.white;
    return Container(
      child: Column(
        children: <Widget>[

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
            MaterialButton(
             minWidth:150.0,
              height: 40,
             color: Color(0xFF58BE3F),
             // color:selectedCreateid==Createid.free? activeColor :inactiveColor,
              onPressed:(){
              setState(() {
                selectedCreateid =Createid.free;
              });
              },

              child:Text('Free',style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
            ),
                MaterialButton(
                  minWidth:150.0,
                  height: 40,
                  color:selectedCreateid==Createid.business? activeColor :inactiveColor,
                  onPressed: (){
                    setState(() {
                      selectedCreateid =Createid.business;
                    });
                  },

                  child:Text('Business',style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF58BE3F),
                  ),),
                ),

              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,

            ),
            child: InputField(),
          ),


          SizedBox(height: 30.0,),
          Button(),
        ],

      ),
    );
  }
}
