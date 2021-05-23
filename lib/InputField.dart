import 'package:flutter/material.dart';
class InputField extends StatelessWidget {
  const InputField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.green[400]),
            )
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'First name',
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.green[400]),
              )
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Last name',
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.green[400]),
              )
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Home address',
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
         padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.green[400]),
              )
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
