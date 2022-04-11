// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables, avoid_print, avoid_returning_null_for_void
import 'package:http/http.dart';
import 'dart:convert';

class Weather{

  dynamic latitude;
  dynamic longitude;
  dynamic wMain;
  dynamic wDescription;
  dynamic wIcon;
  dynamic temperature;
  dynamic humidity;
  dynamic seaLevel;
  dynamic groundLevel;
  dynamic windSpeed;
  dynamic windDegree;
  dynamic cloudsData;
  dynamic country;
  dynamic county;
  dynamic countyCode;


  Future<void> findWeatherData() async {

    try{
      Response response = await get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=-1.2864&lon=36.8172&appid=2190e4b9df5834c6b08172e50520b625'));
      Map data = jsonDecode(response.body);

      Map locData = data['coord']; 
      latitude = locData['lat']; 
      longitude = locData['lon']; 

      List wData = data['weather'];
      Map wInfo = wData[0];
      wMain = wInfo['main'];
      wDescription = wInfo['description'];
      wIcon = wInfo['icon'];

      Map weatherInfo = data['main'];
      temperature = weatherInfo['temp'];
      humidity = weatherInfo['humidity'];
      seaLevel = weatherInfo['sea_level'];
      groundLevel = weatherInfo['grnd_level'];
      
      Map wind = data['wind'];
      windSpeed = wind['speed'];
      windDegree = wind['deg'];
      
      Map clouds = data['clouds'];
      cloudsData = clouds['all'];

      Map system = data['sys'];
      country = system['country'];

      county = data['name'];
      countyCode = data['cod'];

    }
    catch(e) {
      print(e.toString());
      return null;
    }

  }

}

