import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app/numericPad.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class Sign_OTP extends StatefulWidget {
  @override
  _Sign_OTPState createState() => new _Sign_OTPState();
}

class _Sign_OTPState extends State<Sign_OTP>
    with SingleTickerProviderStateMixin {
  Size _screenSize;

  // Returns "Appbar"
  get _getAppbar {
    return new AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: new InkWell(
        borderRadius: BorderRadius.circular(30.0),
        child: new Icon(
          Icons.arrow_back,
          color: Colors.black54,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
    );
  }

  // Return "Verification Code" label
  get _getVerificationCodeLabel {
    return new Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Phone Verification'),
          Text(
            'Enter your OTP code',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Enter the 4-digit code send to you at',
            //  textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                'your number ',
              ),
              Text(
                'did you enter the correct ',
                style: TextStyle(
                  color: Color(0xFF58BE3F),
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            'number?',
            style: TextStyle(
              color: Color(0xFF58BE3F),
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  get _getResendButton {
    return new InkWell(
      child: new Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Resend Code in ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 12.0),
                  ),
                  Text(
                    '10 seconds',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFF58BE3F),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: Color(0xFFBDBDBD),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sign_OTP()));
              },
            ),
            // Text('Resend code '),
          ],
        ),
      ),
    );
  }

  // Return "OTP" input field

  get _getInputField {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
     OTPTextField(
    length: 4,
    width: MediaQuery.of(context).size.width,
    fieldWidth: 60,
    style: TextStyle(
      fontSize: 17
    ),
    textFieldAlignment: MainAxisAlignment.spaceAround,
    fieldStyle: FieldStyle.box,
    onCompleted: (pin) {
      print("Completed: " + pin);
    },
  ),
      ],
     );
   }


  // Returns "OTP" input part
  get _getInputPart {
    return new Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _getVerificationCodeLabel,
        _getInputField,
        _getResendButton,
        _getOtpKeyboard
      ],
    );
  }

  // Returns "Resend" button

  // Returns "Otp" keyboard
  get _getOtpKeyboard {
    return new Container(
        height: _screenSize.width - 80,
        child: new Column(
          children: <Widget>[
            NumericPad(),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: _getAppbar,
      backgroundColor: Colors.white,
      body: new Container(
        width: _screenSize.width,
//        padding: new EdgeInsets.only(bottom: 16.0),
        child: _getInputPart,
      ),
    );
  }







  // Current digit


}
