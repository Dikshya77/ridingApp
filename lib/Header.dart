import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
class Header extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        clipper: OvalBottomBorderClipper(

        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 60.0),
          height: 200,
          color:  Color(0xFF58BE3F),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 20.0,
                ),
                onPressed: (){
                  Navigator.pop(context);
                },),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('WELCOM',style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text('E',style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                  ],

                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
