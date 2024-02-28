import 'package:betpro/A_Login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class A_SplashScreen extends StatefulWidget {
  @override
  _ASplashScreenState createState() => _ASplashScreenState();
}

class _ASplashScreenState extends State<A_SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => EnterCredentials())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 300,
                width: 300,
                child: Image.asset("assets/images/logo.png")),
            SizedBox(
              height: 10,
            ),
            Text(
              "ADMIN",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 24,
                  color: const Color.fromRGBO(57, 128, 203, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
