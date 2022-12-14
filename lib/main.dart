import 'package:flutter/material.dart';
import 'Screens/HomeScreen.dart';
import 'SharedPreferencesManager.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NAT-Test-Applikation',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: const MyHomeScreen(title: 'NAT-Test-Applikation'),
    );
  }
}








