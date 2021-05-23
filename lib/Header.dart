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
          height: 200,
          color:  Color(0xFF58BE3F),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
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

                Padding(
                  padding: const EdgeInsets.only(top: 10.0,right: 90.0),
                  child: Column(
                    children: <Widget>[
                      Text('WELCOM',style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50.0),
                        child: Text('E',style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),

                    ],

                  ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
