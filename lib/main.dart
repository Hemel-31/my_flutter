import 'dart:js';

import 'package:flutter/material.dart';
import 'package:youtube_tut_tasting_4/pages/choose_location.dart';
import 'package:youtube_tut_tasting_4/pages/splashScreen.dart';
import 'package:youtube_tut_tasting_4/pages/home.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) =>SplashScreen(),
      '/home': (context) => HomePage(), 
      '/location':(context) => ChooseLocation(), 
    },
  ));
}
