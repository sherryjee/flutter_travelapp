import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertravelapp/home_screen.dart';


class Splash_Screen extends StatefulWidget{

  _Splash_ScreenState  createState() => _Splash_ScreenState();






}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds:6),
            (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> home_screen(),));
        }

    );




  }



  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF28a176)
            ),

          )
          ,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                child:Icon(Icons.subway,color: Colors.blueGrey, size: 50.0,),
                backgroundColor:Colors.white,
                radius:60.0,),
              Padding(padding: EdgeInsets.all(10.0)),
              Text("KARACHI TRAVELS",style: TextStyle(fontSize:25,color: Colors.white,fontWeight: FontWeight.w700),),
              Expanded(
                  flex: 0,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top:20)),

                      CircularProgressIndicator(),
                      Padding(padding: EdgeInsets.only(top:20,bottom: 10.0)),


                    ],
                  ))





            ],
          )
          ,
        ],
      ),
    );
  }
}
