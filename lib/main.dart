import 'package:betpro/AddDetails.dart';
import 'package:betpro/HomeScreen.dart';
import 'package:betpro/first.dart';
import 'package:betpro/HomeScreen1.dart';
import 'package:betpro/login.dart';
import 'package:betpro/options.dart';
import 'package:betpro/register_EnterPass.dart';
import 'package:betpro/register_EnterPhone.dart';
import 'package:betpro/second_screen.dart';
import 'package:betpro/splash.dart';
import 'package:betpro/third_screen.dart';
//import 'package:betpro/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ThirdScreen(),
    );
  }
}
