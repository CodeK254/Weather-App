// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map data = {};  

  @override
  Widget build(BuildContext context) {

    data =  ModalRoute.of(context)?.settings.arguments as Map;

    String bgImage, smImage;

    if(data['main'] == 'Clouds'){
      bgImage = "clouds.png";
      smImage = "clouds2.png";
    }
    else if(data['main'] == 'Rain'){
      bgImage = "rain.png";
      smImage = "rain2.png";
    }
    else if(data['main'] == 'Drizzle'){
      bgImage = "drizzle.png";
      smImage = "drizzle2.png";
    }
    else {
      bgImage = 'clear.png';
      smImage = 'clear2.png';
    }

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   leading: null,
      //   toolbarHeight: MediaQuery.of(context).size.height * 0.08,
      //   backgroundColor: Colors.blue,
      //   title: Text(
      //     'Weather Info',
      //     style: TextStyle(
      //       fontFamily: 'MeriendaOne',
      //       fontSize: 25,
      //       fontWeight: FontWeight.bold,
      //       letterSpacing: 1.5,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Weather Info',
                      style: TextStyle(
                        fontFamily: 'MeriendaOne',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage('assets/$bgImage'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.2,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(child: Text('Location',style:TextStyle(color:Color.fromARGB(255, 170, 129, 7),fontWeight: FontWeight.bold,fontSize: 18,fontFamily: 'MeriendaOne'))),
                              Divider(height: 5),
                              Text('Country: ${data['country']}',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 20,fontFamily: 'Rancho',letterSpacing:1.5)),
                              Text('County: ${data['county']}',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 20,fontFamily: 'Rancho',letterSpacing:1.5)),
                              Text('Latitude: ${data['latitude'].toString()}',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 20,fontFamily: 'Rancho',letterSpacing:1.5)),
                              Text('Longitude: ${data['longitude'].toString()}',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 20,fontFamily: 'Rancho',letterSpacing:1.5)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,  
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage('assets/$bgImage'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.2,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(child: Text('Information',style:TextStyle(color:Color.fromARGB(255, 170, 129, 7),fontWeight: FontWeight.bold,fontSize: 18,fontFamily: 'MeriendaOne'))),
                              Divider(height: 5),
                              Text('Humidity: ${data['humidity'].toString()}',style:TextStyle(color:Colors.black,fontWeight: FontWeight.normal,fontSize: 20,fontFamily: 'Rancho',letterSpacing:1.5)),
                              Text('WindSpeed: ${data['windSpeed'].toString()}',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 20,fontFamily: 'Rancho',letterSpacing:1.5)),
                              Text('WindDegree: ${data['windDegree'].toString()}',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 20,fontFamily: 'Rancho',letterSpacing:1.5)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage('assets/$bgImage'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.3,
                    maxWidth: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Align(
                    alignment:Alignment.topRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(child: Text('Weather: ${data['main']} -> ${data['description']}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,letterSpacing:1.5,fontFamily: 'MeriendaOne'),)),
                        SizedBox(height:10),
                        Container(child: Text('Temp: ${data['temperature'].toString()}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,letterSpacing:1.5,fontFamily: 'MeriendaOne'),)),
                        SizedBox(height:10),
                        Container(child: Text('Clouds: ${data['cloudsData'].toString()}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,letterSpacing:1.5,fontFamily: 'MeriendaOne'),)),
                        SizedBox(height:10),
                        Container(child: Text('Code: ${data['countyCode'].toString()}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,letterSpacing:1.5,fontFamily: 'MeriendaOne'),)),
                      ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}