import 'package:flutter/material.dart';



import 'Header.dart';

class WorrySet extends StatefulWidget {
  @override
  _WorrySetState createState() => _WorrySetState();
}

class _WorrySetState extends State<WorrySet> {

  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Header(),
        SizedBox(height: 20.0,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text(
                'Dont worry!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                obscureText: _isHidden,
                decoration: const InputDecoration(
                  hintText: 'New password',
                  suffix: InkWell(
                    // onTap:_togglePasswordView,
                    child: Icon(Icons.visibility),
                  ),


                ),

              ),
              SizedBox(height: 20.0,),
              TextField(
                obscureText: _isHidden,
                decoration: const InputDecoration(
                  hintText: 'Confirm password',
                  suffix: InkWell(
                    // onTap:_togglePasswordView,
                    child: Icon(Icons.visibility),
                  ),
                ),
              ),
              SizedBox(height: 60.0,),
              MaterialButton(
                height: 60,
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>WorrySet()) );

                },
                color: Color(0xFF58BE3F),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Continue',style: TextStyle(
                        color:Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon:Icon(Icons.arrow_forward,
                        color: Colors.white,
                        size: 35.0,
                      ),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),


             ],
              ),
            ),
    );








  }

}



