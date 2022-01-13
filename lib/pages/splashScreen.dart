import 'package:flutter/material.dart';
import '../services/world_time.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  

void setupWorldTime() async{
  WorldTime bangladesh = new WorldTime(location: 'Bangladesh', flag: 'Bangladesh.JPG', url: 'Asia/Dhaka');
  await bangladesh.getTime();
  print(bangladesh.time);
  Navigator.pushReplacementNamed(context, '/home', arguments: {
    "location" : bangladesh.location,
    "time":bangladesh.time,
    "flag": bangladesh.flag,
  });
}
  
  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Logo Loding...."),
      ),
    );
  }
}