import 'package:flutter/material.dart';
import 'package:hotel_bookingapp/home/detail_page.dart';
import 'package:hotel_bookingapp/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}
