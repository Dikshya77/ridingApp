import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
class NumericPad extends StatelessWidget {
 final Function(int) onNumberSelected;
 NumericPad({this.onNumberSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        color: Color(0xFFEFEFEF),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(

              height:MediaQuery.of(context).size.height*0.09,
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildNumber(1),
                  buildNumber(2),
                  buildNumber(3),
                ],
              ),
            ),
            Container(
              height:MediaQuery.of(context).size.height*0.09,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildNumber(4),
                  buildNumber(5),
                  buildNumber(6),
                ],
              ),
            ),
            Container(
              height:MediaQuery.of(context).size.height*0.09,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildNumber(7),
                  buildNumber(8),
                  buildNumber(9),
                ],
              ),
            ),
            Container(

              height:MediaQuery.of(context).size.height*0.09,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildEmptySpace(),
                  buildNumber(0),
                  buildBackSpace(),
                ],
              ),
            ),
          ],
      ),
      ),
    );
  }
  Widget buildNumber(int number){

    return Expanded(
      child: GestureDetector(
        onTap: (){
          onNumberSelected(number);
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFCFCFE),
              borderRadius: BorderRadius.all(Radius.circular(5.0),
              ),
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: TextStyle(
                  fontSize: 20.0,
                 // fontWeight: FontWeight.bold,
                  color: Color(0xFF000000)
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEmptySpace(){
    return Expanded(
      child: Container(),

    );
  }
 Widget buildBackSpace(){
   return Expanded(
     child: GestureDetector(
       onTap: (){
         onNumberSelected(-1);
       },
       child: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Container(
           decoration: BoxDecoration(
             color: Color(0xFFFCFCFE),
             borderRadius: BorderRadius.all(Radius.circular(5.0),
             ),
           ),
           child:Center(
             child: Icon(
               Icons.backspace_sharp,
               size: 20.0,
               color: Colors.black,
             ),
           ),

         ),
       ),
     ),
   );

 }
}
