import 'package:flutter/material.dart';
import 'package:weatherapp/services/locations.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocation() async {
    Location coordinates = Location();
    await coordinates.getCurrentLocation();
    print("lat: ${coordinates.latitude} long: ${coordinates.longitude}");
  }

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: Text('Location'),
        ),
      ),
    );
  }
}
