import 'dart:ui';
import 'package:betpro/A_Deposit.dart';
import 'package:betpro/A_Withdraw.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizedFABContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Stack(
      children: [
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: (queryData.size.width / 1.08) / 2.9,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(255, 255, 255, 0.1)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.31), // Set shadow color
                      spreadRadius: 4, // Set spread radius
                      blurRadius: 3, // Set blur radius
                      offset: Offset(0, 0), // Set the offset (x, y)
                    ),
                  ],
                  //color: Colors.black,
                  color: Color.fromRGBO(241, 242, 253, 1),
                  borderRadius: BorderRadius.circular(6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Reports",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 44, 43, 43),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.report_outlined,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class A_HomeScreen extends StatefulWidget {
  const A_HomeScreen({super.key});

  @override
  State<A_HomeScreen> createState() => _A_HomeScreenState();
}

class _A_HomeScreenState extends State<A_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background1.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "BetPro exchange app",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            "Download from bproexch.com",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 52,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: AssetImage('assets/images/profile.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(241, 242, 253, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Deposit()));
                                },
                                child: Container(
                                  height: 64,
                                  width: 87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromRGBO(115, 178, 238, 1),
                                        const Color.fromRGBO(88, 149, 214, 1),
                                      ], // Use your desired colors
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Deposit",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Withdraw()));
                                },
                                child: Container(
                                  height: 64,
                                  width: 87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromRGBO(249, 128, 89, 1),
                                        const Color.fromRGBO(255, 22, 22, 1),
                                      ], // Use your desired colors
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Withdraw",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  //   Navigator.push(
                                  // context,
                                  // MaterialPageRoute(
                                  //     builder: (context) => A_HomeScreen()));
                                },
                                child: Container(
                                  height: 64,
                                  width: 87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromRGBO(115, 178, 238, 1),
                                        const Color.fromRGBO(57, 42, 220, 1),
                                      ], // Use your desired colors
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Web",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          width: queryData.size.width / 1.08,
                          height: 50,
                          color: Color.fromRGBO(241, 242, 253, 1),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(""),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  height: 45,
                                  width: (queryData.size.width / 1.08) / 2.45,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 0.1)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(
                                              0.31), // Set shadow color
                                          spreadRadius: 4, // Set spread radius
                                          blurRadius: 3, // Set blur radius
                                          offset: Offset(
                                              0, 0), // Set the offset (x, y)
                                        ),
                                      ],
                                      //color: Colors.black,
                                      color: Color.fromRGBO(241, 242, 253, 1),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Add Accounts",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Color.fromARGB(255, 44, 43, 43),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.add),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: const Color.fromRGBO(203, 203, 203, 1),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // dont mess with this pic
                        /////////////////////////////////////////

                        //Image

                        ////////////////////////////////////////

                        Container(
                          width: queryData.size.width / 1.08,
                          height: 92,
                          decoration: BoxDecoration(
                              //border: Border.all(width: 1),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Set shadow color
                                  spreadRadius: 3, // Set spread radius
                                  blurRadius: 5, // Set blur radius
                                  offset: Offset(0, 0), // Set the offset (x, y)
                                ),
                              ],
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Container(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: queryData.size.width / 1.08,
                                height: 68,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            child: Center(
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                    "assets/images/profile.png"),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "To Khalid",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: const Color.fromRGBO(
                                                        67, 67, 67, 0.62)),
                                              ),
                                              Text(
                                                "Easypaisa: 03183933088",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: const Color.fromRGBO(
                                                        67, 67, 67, 0.62)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(9),
                                      child: Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.check_box,
                                                  color: Colors.blue,
                                                  size: 20,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: queryData.size.width / 1.08,
                                height: 0.5,
                                color: Color.fromARGB(255, 55, 68, 219),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 6),
                                  width: queryData.size.width / 1.08,
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "",
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "03-10-2023  ",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    67, 67, 67, 0.62),
                                                fontSize: 12),
                                          ),
                                          Text(
                                            "01:17 PM",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    67, 67, 67, 0.62),
                                                fontSize: 12),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: queryData.size.width / 1.08,
                          height: 92,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Set shadow color
                                  spreadRadius: 3, // Set spread radius
                                  blurRadius: 5, // Set blur radius
                                  offset: Offset(0, 0), // Set the offset (x, y)
                                ),
                              ],
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Container(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: queryData.size.width / 1.08,
                                height: 68,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            child: Center(
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                    "assets/images/profile.png"),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "To Khalid",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: const Color.fromRGBO(
                                                        67, 67, 67, 0.62)),
                                              ),
                                              Text(
                                                "Easypaisa: 03183933088",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: const Color.fromRGBO(
                                                        67, 67, 67, 0.62)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(9),
                                      child: Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.check_box,
                                                  color: Colors.blue,
                                                  size: 20,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: queryData.size.width / 1.08,
                                height: 0.5,
                                color: Color.fromARGB(255, 55, 68, 219),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 6),
                                  width: queryData.size.width / 1.08,
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "",
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "03-10-2023  ",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    67, 67, 67, 0.62),
                                                fontSize: 12),
                                          ),
                                          Text(
                                            "01:17 PM",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    67, 67, 67, 0.62),
                                                fontSize: 12),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: queryData.size.width / 1.08,
                          height: 92,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Set shadow color
                                  spreadRadius: 3, // Set spread radius
                                  blurRadius: 5, // Set blur radius
                                  offset: Offset(0, 0), // Set the offset (x, y)
                                ),
                              ],
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Container(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: queryData.size.width / 1.08,
                                height: 68,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            child: Center(
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                    "assets/images/profile.png"),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "To Khalid",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: const Color.fromRGBO(
                                                        67, 67, 67, 0.62)),
                                              ),
                                              Text(
                                                "Easypaisa: 03183933088",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: const Color.fromRGBO(
                                                        67, 67, 67, 0.62)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(9),
                                      child: Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.check_box,
                                                  color: Colors.blue,
                                                  size: 20,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: queryData.size.width / 1.08,
                                height: 0.5,
                                color: Color.fromARGB(255, 55, 68, 219),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 6),
                                  width: queryData.size.width / 1.08,
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "",
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "03-10-2023  ",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    67, 67, 67, 0.62),
                                                fontSize: 12),
                                          ),
                                          Text(
                                            "01:17 PM",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    67, 67, 67, 0.62),
                                                fontSize: 12),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: CustomizedFABContainer(),
    );
  }
}
