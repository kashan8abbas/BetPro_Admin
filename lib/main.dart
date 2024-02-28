import 'package:betpro/A_Add_User.dart';
import 'package:betpro/A_Reports.dart';
import 'package:betpro/A_Splash.dart';
import 'package:betpro/A_Withdraw.dart';

import 'package:firebase_core/firebase_core.dart';

//import 'package:betpro/splash.dart';
import 'package:flutter/material.dart';

void main() async {
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
      home: AddUser(),
      // home: EnterPassword(),
    );
  }
}
