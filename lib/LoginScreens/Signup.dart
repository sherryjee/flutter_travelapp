import 'package:flutter/material.dart';
import 'package:fluttertravelapp/home_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
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
                    style: TextStyle(fontSize: 55.0, color: Colors.green),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Column(
              children: <Widget>[
                TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      labelText: 'Email', labelStyle: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  height: 20,
                ),
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
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Container(
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
                      'SIGNUP',
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
                  color: Colors.red[400],
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(17, 15, 17, 15),
                    child: Text(
                      'SIGNUP WITH GOOGLE',
                      style: TextStyle(
                          // color: Colors.white
                          ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
