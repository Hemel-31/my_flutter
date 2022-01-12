import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}
int counter = 0;
class _ChooseLocationState extends State<ChooseLocation> {
  @override



  Widget build(BuildContext context) {
    print("It was build once...");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Choose Location'),
        centerTitle: true,
      ),
      body: Text('Choose a location!')

    );
  }
}