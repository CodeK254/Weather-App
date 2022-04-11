// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:weather/fetch/Weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class chooseLocation extends StatefulWidget {

  @override
  State<chooseLocation> createState() => _chooseLocationState();
}

class _chooseLocationState extends State<chooseLocation> {

  
  dynamic latitude = 'loading...';
  dynamic longitude = 'loading...';
  dynamic wMain = 'loading...';
  dynamic wDescription =  'loading...';
  dynamic wIcon =  'loading...';

  void locationTracker() async {

    Weather instance = Weather();
    await instance.findWeatherData();

    Navigator.pushReplacementNamed(context, '/', arguments: {
      'main': instance.wMain,
      'description': instance.wDescription,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'wDescription': instance.wDescription,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'windSpeed': instance.windSpeed,
      'windDegree': instance.windDegree,
      'cloudsData': instance.cloudsData,
      'country': instance.country,
      'county': instance.county,
      'countyCode': instance.countyCode,                                                                                
    });
    

  }

  @override
  void initState(){

    super.initState();
    locationTracker();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: SpinKitRipple(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}