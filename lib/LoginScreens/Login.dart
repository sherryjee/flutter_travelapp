import 'package:flutter/material.dart';
import 'package:fluttertravelapp/LoginScreens/Signup.dart';

import 'package:fluttertravelapp/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  Animation animation, textfieldAnim, buttonsAnim;
  AnimationController animationcontroller;
  @override
  void initState() {
    // TODO: implement initState
    animationcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationcontroller.view, curve: Curves.fastOutSlowIn));
    textfieldAnim = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationcontroller.view,
        curve: Interval(0.5, 1, curve: Curves.fastOutSlowIn)));
    buttonsAnim = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationcontroller.view,
        curve: Interval(0.8, 1, curve: Curves.fastOutSlowIn)));

    animationcontroller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: animationcontroller,
        builder: (builder, child) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Transform(
                    transform: Matrix4.translationValues(
                        animation.value * w, 0.0, 0.0),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 110, 0, 0),
                          child: Container(
                            child: Text(
                              'Hello',
                              style: TextStyle(
                                fontSize: 55.0,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 172, 0, 0),
                          child: Container(
                            child: Text(
                              'Traveller',
                              style: TextStyle(
                                fontSize: 55.0,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(275.0, 172, 0, 0),
                          child: Container(
                            child: Text(
                              '!',
                              style: TextStyle(
                                  fontSize: 55.0, color: Colors.green),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Transform(
                    transform: Matrix4.translationValues(textfieldAnim.value*w, 0.0, 0.0),
                                      child: Container(
                      padding: EdgeInsets.only(top: 40, left: 30, right: 30),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(fontSize: 20)),
                          ),
                          SizedBox(height: 20,),
                          TextField(
                            obscureText: true,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(fontSize: 20)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment(1.0, 0.0),
                            padding: EdgeInsets.only(left: 20, top: 15),
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.green),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Transform(
                    transform: Matrix4.translationValues(buttonsAnim.value*w, 0.0, 0.0),
                                      child: Container(
                      alignment: Alignment(0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          RaisedButton(
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.green,
                            onPressed: () {
                               Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home_screen(),
                                ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(75, 15, 75, 15),
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    // color: Colors.white
                                    ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RaisedButton(
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.red[700],
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home_screen(),
                                ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(17, 15, 17, 15),
                              child: Text(
                                'LOGIN WITH GOOGLE',
                                style: TextStyle(
                                    // color: Colors.white
                                    ),
                              ),
                            ),
                          ),
                            SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('New to Travel PK?'),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupScreen(),
                                ));
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.green,
                                decoration: TextDecoration.underline),
                          ))
                    ],
                  )
                        ],
                      ),
                    ),
                  ),
                
                ],
              ),
            ),
          );
        });
  }
}
