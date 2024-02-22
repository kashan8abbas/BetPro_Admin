import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: AssetImage('assets/images/facebook.png'),
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
                        Container(
                          width: queryData.size.width,
                          height: 240,
                          color: const Color.fromRGBO(241, 242, 253, 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: ((queryData.size.width - 25) / 2),
                                  height: 240,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromRGBO(11, 108, 217, 1),
                                        const Color.fromRGBO(33, 150, 243, 1)
                                      ], // Use your desired colors
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        width:
                                            ((queryData.size.width - 25) / 2.2),
                                        height: 50,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Rs. 1000",
                                              style: TextStyle(
                                                  fontSize: 23,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "Current Balance",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:
                                            ((queryData.size.width - 25) / 2),
                                        height: 0.5,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        width:
                                            ((queryData.size.width - 25) / 2.2),
                                        height: 70,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "BETPRO USERNAME",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 0.8)),
                                            ),
                                            Text(
                                              "bproexch",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "BETPRO PASSWORD",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 0.8)),
                                            ),
                                            Text(
                                              "bproexch1",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 0),
                                        width:
                                            ((queryData.size.width - 25) / 2.2),
                                        height: 25,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Tap to open betPro exchange",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: const Color.fromRGBO(
                                                        255, 255, 255, 0.8),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons
                                                      .arrow_forward_ios, // Use the specific arrow icon you prefer
                                                  size:
                                                      12, // Adjust the size of the arrow icon as needed
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 0.8),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 0),
                                        width:
                                            ((queryData.size.width - 25) / 2.2),
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.white)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Account inactive",
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 0.8)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                        width:
                                            ((queryData.size.width - 25) / 2) -
                                                25,
                                        height: 103,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: LinearGradient(
                                            colors: [
                                              const Color.fromRGBO(
                                                  115, 178, 238, 1),
                                              const Color.fromRGBO(
                                                  80, 149, 214, 1)
                                            ], // Use your desired colors
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                              child: Icon(
                                                Icons
                                                    .arrow_downward, // Use the specific arrow icon you prefer
                                                size:
                                                    25, // Adjust the size of the arrow icon as needed
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 0.8),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                              child: Text(
                                                "Load money",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        )),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                        width:
                                            ((queryData.size.width - 25) / 2) -
                                                25,
                                        height: 103,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: LinearGradient(
                                            colors: [
                                              const Color.fromRGBO(
                                                  249, 128, 89, 1),
                                              const Color.fromRGBO(
                                                  255, 22, 22, 1)
                                            ], // Use your desired colors
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(" "),
                                                  Icon(
                                                    Icons
                                                        .arrow_downward, // Use the specific arrow icon you prefer
                                                    size:
                                                        25, // Adjust the size of the arrow icon as needed
                                                    color: const Color.fromRGBO(
                                                        255, 255, 255, 0.8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                              child: Text(
                                                "Send money",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        // dont mess with this pic
                        /////////////////////////////////////////

                        //Image.asset("assets/images/instruction.png"),

                        ////////////////////////////////////////

                        Container(
                          width: queryData.size.width / 1.08,
                          height: 110,
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
                              borderRadius: BorderRadius.circular(6)),
                          child: Column(
                            children: [
                              Container(
                                width: queryData.size.width / 1.08,
                                height: 75,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            color: Colors.white,
                                            child: Center(
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                    "assets/images/up.png"),
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
                                                "Withdraw",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Color.fromRGBO(
                                                      5, 88, 180, 1),
                                                ),
                                              ),
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
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                        child: Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 6),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(""),
                                          Text(
                                            "Rs. 1000",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: const Color.fromRGBO(
                                                    5, 88, 180, 1),
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 3,
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
                                        "Payment Approved",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
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
                          height: 110,
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
                              borderRadius: BorderRadius.circular(6)),
                          child: Column(
                            children: [
                              Container(
                                width: queryData.size.width / 1.08,
                                height: 75,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            color: Colors.white,
                                            child: Center(
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                    "assets/images/down.png"),
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
                                                "Deposit",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Color.fromRGBO(
                                                      5, 88, 180, 1),
                                                ),
                                              ),
                                              Text(
                                                "To Sabia fatima",
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
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                        child: Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 6),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(""),
                                          Text(
                                            "Rs. 1005",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: const Color.fromRGBO(
                                                    5, 88, 180, 1),
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 3,
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
                                        "Payment Approved",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
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
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
