import 'package:flutter/material.dart';
class InputField extends StatefulWidget {
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0,),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.green[400]),
            )
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'First name',
            //  errorText: _validate ? 'Value Can\'t Be Empty' : null,
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
            ),

          ),
        ),
        SizedBox(height: 20.0,),
        Container(
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.green[400]),
              )
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Last name',
             // errorText: _validate ? 'Value Can\'t Be Empty' : null,
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        Container(
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.green[400]),
              )
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Home address',
             // errorText: _validate ? 'Value Can\'t Be Empty' : null,
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        Container(
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.green[400]),
              )
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Password',
             // errorText: _validate ? 'Value Can\'t Be Empty' : null,
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}

