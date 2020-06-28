import 'package:flutter/material.dart';

import 'package:fluttertravelapp/Splash_screen/splash_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {



  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: 'Montserrat',
        
        primaryColor: Color(0xFF28a176),
      ),
      home:Splash_Screen(),
    );
  }
}

