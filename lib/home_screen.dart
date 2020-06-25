import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertravelapp/detail_screen/detail_screen.dart';



class home_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("traveling",style: TextStyle(fontSize: 12.0,color: Colors.white,),textAlign: TextAlign.center,)
        ,),
      drawerScrimColor: Colors.white,
      drawer: Drawer(
        child: ListView(children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("XXXXXXXXXXXXXX"),
            accountName: Text("XXXXXXXXXxx"),
            decoration: BoxDecoration(
             image: DecorationImage(
               image: NetworkImage('https://img.wallpapersafari.com/tablet/768/1024/19/62/U9QxJl.png'),

               fit: BoxFit.cover,
              )

            ),
          ),

          ListTile(
            title: Text('page 1'),
            leading: Icon(Icons.home,color: Colors.blueGrey,),
            onTap: () {
              // Update the state of the app
              Navigator.push(context, MaterialPageRoute(builder:(context)=> detail_screen(),));
              // Then close the drawer

            },
          ),
          Divider(),
          ListTile(
            title: Text('page 2'),
            leading: Icon(Icons.account_circle,color:Colors.blueGrey,),
            onTap: () {
              // Update the state of the app
              //Navigator.push(context, MaterialPageRoute(builder:(context)=> detail_screen(),));
              // Then close the drawer

            },
          ),
          Divider(),
          ListTile(
            title: Text('page 3'),
            leading: Icon(Icons.navigation,color: Colors.blueGrey,),
            onTap: () {
              // Update the state of the app
              //Navigator.push(context, MaterialPageRoute(builder:(context)=> detail_screen(),));
              // Then close the drawer

            },
          ),
          Divider(),
          ListTile(
            title: Text('page 4'),
            leading: Icon(Icons.subway,color: Colors.blueGrey,),
            onTap: () {
              // Update the state of the app
            //  Navigator.push(context, MaterialPageRoute(builder:(context)=> detail_screen(),));
              // Then close the drawer

            },
          ),

          Divider(),

            ListTile(
            title: Text('page 5'),
            leading: Icon(Icons.subway,color: Colors.blueGrey,),
            onTap: () {
              // Update the state of the app
            //  Navigator.push(context, MaterialPageRoute(builder:(context)=> detail_screen(),));
              // Then close the drawer

            },
          ),






        ],),
      )






    );
  }





}

