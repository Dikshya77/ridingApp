import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/SignupPage.dart';

import 'Header.dart';
import 'InputWrapper.dart';

class CreateAcc extends StatefulWidget {
  const CreateAcc({Key key}) : super(key: key);

  @override
  _CreateAccState createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Header(),

              Expanded(child: InputWrapper(),),

            ],
          ),
        ),
      ),


    );
  }
}
