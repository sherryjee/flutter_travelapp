
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:fluttertravelapp/CustomWidgets/CustomFavButton.dart';
import 'package:fluttertravelapp/detail_screen/places.dart';
class Hotelinfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TRAVEL PK",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body:ListView(
        children: <Widget>[
          Container(
              height: 250,
              width: 600,
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(5.0),
              child:Stack(
                children: <Widget>[

                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(15),
                      top: Radius.circular(15),
                    ),
                    child: Image(
                      image: AssetImage('hotelimages/HUNZASARENAINN.jpg'),
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    child: CircularButton(
                      radius: 10,
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                        size: 20,
                      ),
                      onPressed: () => {},
                    ),
                    bottom: 8.0,
                    right: 2.0,
                    left: 250.0,
                  ),

                ],

              )
          ),
          
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${places[0]["name"]}",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.left,
                      ),
                    ),

                    IconButton(
                      icon: Icon(
                        Icons.bookmark,
                      ),
                      onPressed: (){},
                    ),



                  ],
                ),


          ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:0,bottom: 0,left: 5,right: 5),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: Colors.blueGrey[300],
                          ),

                          SizedBox(width: 3),

                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${places[0]["location"]}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.blueGrey[300],
                              ),
                              maxLines: 1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("${places[0]["details"]}",style:
                    TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                      textAlign: TextAlign.left,),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),

              ],
            ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation),foregroundColor: Colors.white,
        onPressed: (){},
        backgroundColor: Color(0xFF28a176),


      ),


      );
  }



}
