import 'package:betpro/otp.dart';
import 'package:betpro/register_EnterPass.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class EnterPhoneNumber extends StatefulWidget {
  static String verify = "";

  const EnterPhoneNumber({super.key});

  @override
  State<EnterPhoneNumber> createState() => _EnterPhoneNumberState();
}

class _EnterPhoneNumberState extends State<EnterPhoneNumber> {
  TextEditingController countryController = TextEditingController();
  // TextEditingController OTPin = TextEditingController();
  // var Phone = '';

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+92";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 242, 253, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(241, 242, 253, 1),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Color.fromRGBO(5, 88, 180, 1),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.info,
                color: Color.fromRGBO(5, 88, 180, 1),
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Enter your Mobile Number",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(5, 88, 180, 1),
                          fontWeight: FontWeight.w600)),
                ),
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey, // Shadow color
                    blurRadius: 3.0, // Spread of the shadow
                    offset: Offset(0, 2), // Offset of the shadow
                  ),
                ], color: Colors.white, borderRadius: BorderRadius.circular(6)),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        // onChanged: (value) {
                        //   // Store the entered phone number
                        //   setState(() {
                        //     Phone = value;
                        //   });
                        // },
                        controller:
                            countryController, // Use a separate controller for phone number
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              '+923*********', // Placeholder for phone number
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(
                        width:
                            5), // Adjust the width for spacing between TextField and Image
                    Image.asset(
                      'assets/images/icon.png',
                      width: 45,
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
          // phoneNumber: '${countrycode.text + phoneNo}',
          TextButton(
            onPressed: () async {
              // Get the text from the countryController
              String phoneNumber = countryController.text;

              // Check if phoneNumber is empty
              if (phoneNumber.isEmpty) {
                // Show an error message or handle empty phone number case
                return;
              }

              // Verify the phone number with Firebase
              await FirebaseAuth.instance.verifyPhoneNumber(
                phoneNumber: phoneNumber,
                verificationCompleted: (PhoneAuthCredential credential) {
                  // Handle verification completed
                },
                verificationFailed: (FirebaseAuthException e) {
                  // Handle verification failure
                  print('Phone verification failed: ${e.message}');
                },
                codeSent: (String verificationId, int? resendToken) {
                  EnterPhoneNumber.verify = verificationId;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyVerify()),
                  );
                  // Handle code sent
                },
                codeAutoRetrievalTimeout: (String verificationId) {
                  // Handle code auto retrieval timeout
                },
              );
            },
            child: Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(
                          116, 178, 231, 1), // Color on the left side
                      Color.fromRGBO(5, 88, 180, 1), // Color on the right side
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // Shadow color
                      blurRadius: 3.0, // Spread of the shadow
                      offset: Offset(0, 0), // Offset of the shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(6),
                ),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Center(
                  child: Text(
                    "Next",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
