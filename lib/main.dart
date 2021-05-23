import 'package:flutter/material.dart';

import 'package:flutter_app/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",

        primarySwatch: Colors.blue,
      ),
      home: homescreen(),
    );
  }
}

