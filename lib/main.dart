import 'package:flutter/material.dart';
import 'package:testing/widgets/home.dart';
import 'package:testing/widgets/buttons.dart';
import 'package:testing/widgets/input_2.dart';
import 'package:testing/widgets/ishja.dart';
import 'package:testing/widgets/profile.dart';
import 'package:testing/widgets/switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Day 1',
      theme: ThemeData(
        primaryColor: Colors.teal[600],
        primarySwatch: Colors.red,
      ),

      home: HomePage(),

      routes: {
        '0' : (context) => ButtonsPage(),
        '1' : (context) => ConsultantProfilePage(),
        'Testing' : (context) => Testing2Page(),
        'InputPage' : (context) => InputPage(),
        'SwitchPage' : (context) => SwitchPage(),
      },
    );
  }
}
