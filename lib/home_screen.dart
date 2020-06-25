import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertravelapp/detail_screen/detail_screen.dart';

class home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "traveling",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        drawerScrimColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text("XXXXXXXXXXXXXX"),
                accountName: Text("XXXXXXXXXxx"),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      'https://img.wallpapersafari.com/tablet/768/1024/19/62/U9QxJl.png'),
                  fit: BoxFit.cover,
                )),
              ),
              ListTile(
                title: Text('page 1'),
                leading: Icon(
                  Icons.home,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  // Update the state of the app
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => detail_screen(),
                      ));
                  // Then close the drawer
                },
              ),
              Divider(),
              ListTile(
                title: Text('page 2'),
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  // Update the state of the app
                  //Navigator.push(context, MaterialPageRoute(builder:(context)=> detail_screen(),));
                  // Then close the drawer
                },
              ),
              Divider(),
              ListTile(
                title: Text('page 3'),
                leading: Icon(
                  Icons.navigation,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  // Update the state of the app
                  //Navigator.push(context, MaterialPageRoute(builder:(context)=> detail_screen(),));
                  // Then close the drawer
                },
              ),
              Divider(),
              ListTile(
                title: Text('page 4'),
                leading: Icon(
                  Icons.subway,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  // Update the state of the app
                  //  Navigator.push(context, MaterialPageRoute(builder:(context)=> detail_screen(),));
                  // Then close the drawer
                },
              ),
              Divider()
            ],
          ),
        ),
        body:  Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: <Widget>[
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Popular Cities',style: TextStyle(
                      fontSize: 20,
                      
                      fontWeight: FontWeight.w700
                    ),),
                    FlatButton(onPressed: (){}, child: Text('View More',style: TextStyle(
                      
                      color: Colors.green[800],
                      fontWeight: FontWeight.w500
                    ),))
                  ],
                ),
                SizedBox(height: 15,),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Lahore',style: TextStyle(
                          fontSize: 18,
fontWeight: FontWeight.w600
                        ),),
                        SizedBox(height: 5,),
                        Text('Lahore is the capital of the Pakistani province of Punjab, and is the country\'s 2nd largest city after Karachi, as well as the 18th largest city proper in the world. Lahore is one of Pakistan\'s wealthiest cities, with an estimated GDP of \$65.14 billion as of 2017.',
                        maxLines: 4,
                        textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
        );
  }
}
