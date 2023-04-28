import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:rider_app/AllScreens/loginScreen.dart';
import 'package:rider_app/AllScreens/mainScreen.dart';
import 'package:rider_app/AllScreens/registrationScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

DatabaseReference usersRef =
    FirebaseDatabase.instance.reference().child("users");

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
      initialRoute: loginScreen.idScreen,
      routes: {
        loginScreen.idScreen: (context) => const loginScreen(),
        registrationScreen.idScreen: (context) => registrationScreen(),
        mainScreen.idScreen: (context) => const mainScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
