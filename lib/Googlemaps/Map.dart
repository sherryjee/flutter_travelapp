import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget{


  _MapsState createState()=> _MapsState();

}

class _MapsState extends State<Maps>{
  @override


  GoogleMapController _controller;

  final CameraPosition _initialPosition = CameraPosition(target: LatLng(24.903623,  66.990501));

  final List<Marker> markers = [];

  addMarker(cordinate){

    int id = Random().nextInt(100);

    setState(() {
      markers.add(Marker(position: cordinate, markerId: MarkerId(id.toString())));
    });
  }
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        mapType: MapType.normal,

        onMapCreated: (controller){
          setState(() {
            _controller = controller;
          });
        },
        markers: markers.toSet(),
        onTap: (cordinate){
          _controller.animateCamera(CameraUpdate.newLatLng(cordinate));
          addMarker(cordinate);
        },
      ),

    );
  }


}






