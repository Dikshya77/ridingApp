import 'package:flutter_app/homescreen.dart';
import 'package:flutter/material.dart';
class forgetpswd extends StatefulWidget {
  const forgetpswd({Key key}) : super(key: key);

  @override
  _forgetpswdState createState() => _forgetpswdState();
}

class _forgetpswdState extends State<forgetpswd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading:IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),


        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
      ),
    );
  }
}
