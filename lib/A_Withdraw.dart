import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
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
                            "Withdraw",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
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
                child: SingleChildScrollView(
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
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: [
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
                                    offset:
                                        Offset(0, 0), // Set the offset (x, y)
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
                                                  "To Sabia fatima",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              67,
                                                              67,
                                                              67,
                                                              0.62)),
                                                ),
                                                Text(
                                                  "Easypaisa: 03183933088",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              67,
                                                              67,
                                                              67,
                                                              0.62)),
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
                                        Row(
                                          children: [
                                            Text(
                                              "Pending",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              "0 Hr 15 Min",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.6),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ],
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
                                    offset:
                                        Offset(0, 0), // Set the offset (x, y)
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
                                                  "To Sabia fatima",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              67,
                                                              67,
                                                              67,
                                                              0.62)),
                                                ),
                                                Text(
                                                  "Easypaisa: 03183933088",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              67,
                                                              67,
                                                              67,
                                                              0.62)),
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
                                        Row(
                                          children: [
                                            Text(
                                              "Pending",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              "0 Hr 15 Min",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.6),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ],
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
                                    offset:
                                        Offset(0, 0), // Set the offset (x, y)
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
                                                  "withdraw",
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
                                                      color:
                                                          const Color.fromRGBO(
                                                              67,
                                                              67,
                                                              67,
                                                              0.62)),
                                                ),
                                                Text(
                                                  "Easypaisa: 03183933088",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              67,
                                                              67,
                                                              67,
                                                              0.62)),
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
                                        Row(
                                          children: [
                                            Text(
                                              "Pending",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              "0 Hr 15 Min",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.6),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ],
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
                                    offset:
                                        Offset(0, 0), // Set the offset (x, y)
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
                                                  "withdraw",
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
                                                      color:
                                                          const Color.fromRGBO(
                                                              67,
                                                              67,
                                                              67,
                                                              0.62)),
                                                ),
                                                Text(
                                                  "Easypaisa: 03183933088",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              67,
                                                              67,
                                                              67,
                                                              0.62)),
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
                                        Row(
                                          children: [
                                            Text(
                                              "Pending",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              "0 Hr 15 Min",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.6),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ],
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
                                    offset:
                                        Offset(0, 0), // Set the offset (x, y)
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
                                                  "withdraw",
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
                                                      color:
                                                          const Color.fromRGBO(
                                                              67,
                                                              67,
                                                              67,
                                                              0.62)),
                                                ),
                                                Text(
                                                  "Easypaisa: 03183933088",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              67,
                                                              67,
                                                              67,
                                                              0.62)),
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
                                        Row(
                                          children: [
                                            Text(
                                              "Pending",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              "0 Hr 15 Min",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.6),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ],
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
                                    offset:
                                        Offset(0, 0), // Set the offset (x, y)
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
                                                  "withdraw",
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
                                                      color:
                                                          const Color.fromRGBO(
                                                              67,
                                                              67,
                                                              67,
                                                              0.62)),
                                                ),
                                                Text(
                                                  "Easypaisa: 03183933088",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              67,
                                                              67,
                                                              67,
                                                              0.62)),
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
                                        Row(
                                          children: [
                                            Text(
                                              "Pending",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              "0 Hr 15 Min",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.6),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ],
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
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
