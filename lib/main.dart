import 'package:flutter/material.dart';
import 'package:rider_app/AllScreens/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rider App',
      theme: ThemeData(
        fontFamily: "Brand-Bold",
        primarySwatch: Colors.blue,
      ),
      home: mainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
