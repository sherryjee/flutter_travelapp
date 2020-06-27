import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertravelapp/CustomWidgets/CustomFavButton.dart';
import 'package:fluttertravelapp/detail_screen/detail_screen.dart';
import 'package:fluttertravelapp/detail_screen/Hotelinfo.dart';
class Home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "TRAVEL PK",
          style: TextStyle(
            fontSize: 20.0,
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
                      builder: (context) => Detailscreen(),
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
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Hotelinfo() ,));
                // Then close the drawer
              },
            ),
            Divider(),
            ListTile(
              title: Text('HOTELS DETAILS'),
              leading: Icon(
                Icons.hotel,
                color: Colors.blueGrey,
              ),
              onTap: () {
                // Update the state of the app
                Navigator.push(context, MaterialPageRoute(builder:(context)=> Detailscreen(),));
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
      //BODY OF HOME SCREEN
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Top Trending Cities',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.9,
                    autoPlayCurve: Curves.easeOut,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    autoPlayInterval: Duration(seconds: 4),
                    height: MediaQuery.of(context).size.height / 2.91,
                  ),
                  items: [
                    {'name': 'SWAT', 'image': 'images/Swat.jpg'},
                    {'name': 'Hunza', 'image': 'images/Hunza.jpg'},
                    {'name': 'Gawadar', 'image': 'images/Gawadar.jpg'},
                    {'name': 'Gilgit', 'image': 'images/Gilgit.jpg'},
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Card(
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )),
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(15),
                                        bottom: Radius.zero),
                                    child: Image(
                                      image: AssetImage(i['image']),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3.2,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 3,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        color: Colors.white,
                                        gradient: LinearGradient(
                                            begin: FractionalOffset.topCenter,
                                            end: FractionalOffset.bottomCenter,
                                            colors: [
                                              Colors.grey.withOpacity(0),
                                              Colors.black,
                                            ],
                                            stops: [
                                              0.0,
                                              1.0
                                            ])),
                                  ),
                                  Positioned(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            i['name'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.train,
                                                color: Colors.white,
                                                size: 19,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(Icons.airplanemode_active,
                                                  color: Colors.white,
                                                  size: 19),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(Icons.local_taxi,
                                                  color: Colors.white, size: 19)
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    bottom: 10,
                                    left: 10,
                                  ),
                                  Positioned(
                                      bottom: 10,
                                      left: 260,
                                      child: CircularButton(
                                          radius: 10,
                                          icon: Icon(
                                            Icons.favorite_border,
                                            color: Colors.red,
                                            size: 22,
                                          ),
                                          onPressed: () {}))
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Popular Cities',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    FlatButton(
                        onPressed: () {},
                        child: Text(
                          'View More',
                          style: TextStyle(
                              color: Colors.green[800],
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  elevation: 3.0,
                  color: Colors.green[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(15),
                      top: Radius.zero,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                        child: Text(
                          'LAHORE',
                          style: TextStyle(
                              color: Colors.green[800],
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Lahore is the capital of the Pakistani province of Punjab, and is the country\'s 2nd largest city after Karachi, as well as the 18th largest city proper in the world. Lahore is one of Pakistan\'s wealthiest cities, with an estimated GDP of \$65.14 billion as of 2017.',
                          style: TextStyle(fontSize: 12),
                          maxLines: 5,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(15),
                              top: Radius.zero,
                            ),
                            child: Image(
                              image: AssetImage('images/Lahore.jpg'),
                              height: MediaQuery.of(context).size.height / 3.8,
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
                            left: 320.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  elevation: 3.0,
                  color: Colors.green[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(15),
                      top: Radius.zero,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                        child: Text(
                          'KAGHAN',
                          style: TextStyle(
                              color: Colors.green[800],
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Kaghan is a town in the Mansehra District of the Khyber Pakhtunkhwa of Pakistan. Its mountains, dales, lakes, water-falls, streams and glaciers are in an unspoiled paradise. That is why it can be such a deeply satisfying experience to spend a few days in Kaghan.',
                          style: TextStyle(fontSize: 12),
                          maxLines: 5,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(15),
                              top: Radius.zero,
                            ),
                            child: Image(
                              image: AssetImage('images/Kaghan.jpg'),
                              height: MediaQuery.of(context).size.height / 3.8,
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
                            left: 320.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  elevation: 3.0,
                  color: Colors.green[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(15),
                      top: Radius.zero,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                        child: Text(
                          'ISLAMABAD',
                          style: TextStyle(
                              color: Colors.green[800],
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Islamabad is known as a relatively clean, calm and green city by Pakistan standards. It hosts a large number of diplomats, politicians and government employees. Islamabad is a modern, well planned, well maintained and well-organised international city and capital of Pakistan.',
                          style: TextStyle(fontSize: 12),
                          maxLines: 5,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(15),
                              top: Radius.zero,
                            ),
                            child: Image(
                              image: AssetImage('images/Islamabad.jpg'),
                              height: MediaQuery.of(context).size.height / 3.8,
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
                            left: 320.0,
                          ),
                        ],
                      ),
                    ],
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
