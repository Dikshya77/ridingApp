import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/signupdetail.dart';
import 'package:flutter_app/worry.dart';
import 'SignupPage.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),


        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('Welcome Back!',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                        color: Colors.black,
                    ),),
                    SizedBox(height: 20.0),
                    // TextFormField(
                    //   decoration: const InputDecoration(
                    //     hintText: 'Password',
                    //   ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 30.0),

                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Phone Number'
                    ),
                  ),
                ),
         //  Text('Phone number',style: TextStyle(fontSize: 14.0),),
                  ],
                ),
                Padding(padding:EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: <Widget>[

                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),


                    ),
                  ],
                ),
                ),
                MaterialButton(
                  minWidth:double.infinity,
                  height: 20,
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Worry()) );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right:200.0),
                    child: Text('Forget Password?',style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFF303030),
                        fontFamily:'Poppins'),),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: (){

                        },
                        color: Color(0xFF58BE3F),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Login',style: TextStyle(color:Color(0xffF9F9F9),
                                    fontSize: 14.0,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 125.0),
                              child: Padding(
                                padding: const EdgeInsets.only(left:60.0),
                                child: IconButton(
                                  icon:Icon(Icons.arrow_forward,color: Color(0xFFFFFFFF),),
                                  onPressed: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>CreateAcc ()) );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                   // SizedBox(height: 20.0),

                    //SizedBox(height: 20.0),
                    MaterialButton(
                      minWidth:double.infinity,
                      height: 20,
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>SignupPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right:160.0),
                        child: Text('Or Create My account',style: TextStyle(fontSize: 14.0,color:Color(0xFF505050),fontFamily:'Poppins'),),
                      ),
                    ),






                  ],

                ),
              ],
        ),
      ),



                // child:
          ],
        ),
      ),

    );
  }
}

