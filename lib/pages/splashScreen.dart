import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void getTime() async{
    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Dhaka'));
    Map timeData = jsonDecode(response.body);
    // print(timeData);

    //geting propertis from timeData
    String dateTime = timeData['utc_datetime'];
    String abbreviation = timeData['abbreviation'].substring(1,3);
    // print(dateTime);
    // print(abbreviation);
    
    // creating dateTime object
    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(abbreviation)));
    print(now);

  }
  @override
  void initState() {
    super.initState();
    getTime();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loding logo...  '),
    );
  }
}