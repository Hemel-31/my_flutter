import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;

    print(data['loation']);

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(
                Icons.edit_location,
                color: Color.fromARGB(255, 48, 48, 48),
              ),
              label: Text(
                'Choose Location',
                style: TextStyle(
                    color: Color.fromARGB(255, 48, 48, 48),
                    fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(15.0)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.grey,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(5.0))),
              ),
            )
          ],
        ),
      )),
    );
  }
}
