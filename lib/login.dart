import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "BetPro",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 0,
              ), // Adjust the height for spacing between lines
              Text(
                "Exchange App",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "-Instant Deposit and Withdraw",
                style: GoogleFonts.robotoCondensed(
                  textStyle: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Text(
                "For app updates",
                style: GoogleFonts.robotoCondensed(
                  textStyle: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Text(
                "Visit:  Betproexchange.com",
                style: GoogleFonts.robotoCondensed(
                  textStyle: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Text(
                "Register Or Login With Mobile Number",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: const Color.fromRGBO(235, 244, 250, 1),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _textEditingController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your mobile number',
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(
                        width:
                            10), // Adjust the width for spacing between TextField and Image
                    Image.asset(
                      'assets/images/icon.png',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 131,
                    height: 1,
                    color: Colors.white60,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    "Or",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    width: 131,
                    height: 1,
                    color: Colors.white60,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 55, // Adjust the width of the container
                      height: 55, // Adjust the height of the container
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors
                            .transparent, // Set the background color to transparent

                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/facebook.png'), // Replace with the path to your image
                          fit: BoxFit.cover, // Adjust the BoxFit as needed
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 55, // Adjust the width of the container
                      height: 55, // Adjust the height of the container
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors
                            .transparent, // Set the background color to transparent

                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/x.png'), // Replace with the path to your image
                          fit: BoxFit.cover, // Adjust the BoxFit as needed
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 55, // Adjust the width of the container
                      height: 55, // Adjust the height of the container
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors
                            .transparent, // Set the background color to transparent

                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/google.png'), // Replace with the path to your image
                          fit: BoxFit.cover, // Adjust the BoxFit as needed
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have a Account?",
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 14, color: Colors.white60)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
