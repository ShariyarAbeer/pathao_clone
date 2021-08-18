import 'package:flutter/material.dart';
import 'tabBar.dart';
import 'package:page_transition/page_transition.dart';

import 'tripDeatailsCancelled.dart';
import 'tripDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Roboto",
        ),
        home: TabBarList(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/tripDetails':
              return PageTransition(
                child: TripDetails(),
                type: PageTransitionType.rightToLeft,
                settings: settings,
                duration: Duration(milliseconds: 400),
                reverseDuration: Duration(milliseconds: 400),
              );
              break;
            case '/tripDetailsCancelled':
              return PageTransition(
                child: TripDeatailsCancelled(),
                type: PageTransitionType.rightToLeft,
                settings: settings,
                duration: Duration(milliseconds: 400),
                reverseDuration: Duration(milliseconds: 400),
              );
              break;
            default:
              return null;
          }
        });
  }
}
