import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertravelapp/detail_screen/hotelinfo.dart';
import 'package:fluttertravelapp/detail_screen/places.dart';


class detail_screen extends StatelessWidget{
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
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Padding(padding: EdgeInsets.all(20.0),

          child: Text("Where you want to go??",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.blueGrey),),),
          Padding(padding: EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green[60],
              borderRadius: BorderRadius.all(Radius.circular(5.0)),),
            child: TextField(style: TextStyle(fontSize: 20.0,color: Colors.blueGrey),
              decoration: InputDecoration(
                contentPadding:EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText:"E.g: karachi city ",
                prefixIcon: Icon(Icons.location_on,color: Colors.blueGrey,),
                hintStyle:TextStyle(fontSize: 15.0,
                color: Colors.blueGrey)
              ),),),),
          Container(
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
            height: 250,
//            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              primary: false,
              itemCount: places.length,
              itemBuilder: (BuildContext context, int index) {
                Map place = places.toList()[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Container(
                      height: 250,
                      width: 140,
//                      color: Colors.green,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "${place["img"]}",
                              height: 178,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${place["name"]}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 3),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${place["location"]}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.blueGrey[300],
                              ),
                              maxLines: 1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: places.length,
              itemBuilder: (BuildContext context, int index) {
                Map place = places[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: InkWell(
                    child: Container(
                      height: 70,
//                    color: Colors.red,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              "${place["img"]}",
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),

                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width - 130,
                            child: ListView(
                              primary: false,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "${place["name"]}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 13,
                                      color: Colors.blueGrey[300],
                                    ),
                                    SizedBox(width: 3),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "${place["location"]}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.blueGrey[300],
                                        ),
                                        maxLines: 1,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "${place["price"]}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    maxLines: 1,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {


                    },
                  ),
                );
              },
            ),
          ),






        ],
      ),

      
    );
  }




}
