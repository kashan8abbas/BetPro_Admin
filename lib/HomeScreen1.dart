import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
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
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Column(
                      children: [
                        Image.asset("assets/images/component.png"),
                        // Container(
                        //   width: queryData.size.width,
                        //   height: 240,
                        //   color: const Color.fromRGBO(241, 242, 253, 1),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       TextButton(
                        //         onPressed: () {},
                        //         child: Container(
                        //           width: ((queryData.size.width - 25) / 2),
                        //           height: 240,
                        //           decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(10),
                        //             color: Colors.black,
                        //           ),
                        //         ),
                        //       ),
                        //       Column(
                        //         mainAxisAlignment:
                        //             MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           TextButton(
                        //             onPressed: () {},
                        //             child: Container(
                        //               width: ((queryData.size.width - 25) / 2) -
                        //                   25,
                        //               height: 103,
                        //               decoration: BoxDecoration(
                        //                 borderRadius: BorderRadius.circular(10),
                        //                 color: Colors.black,
                        //               ),
                        //             ),
                        //           ),
                        //           TextButton(
                        //             onPressed: () {},
                        //             child: Container(
                        //               width: ((queryData.size.width - 25) / 2) -
                        //                   25,
                        //               height: 103,
                        //               decoration: BoxDecoration(
                        //                 borderRadius: BorderRadius.circular(10),
                        //                 color: Colors.black,
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       )
                        //     ],
                        //   ),
                        // ),
                        SizedBox(
                          height: 20,
                        ),
                        // Container(
                        //   width: queryData.size.width - 30,
                        //   height: 105,
                        //   decoration: BoxDecoration(
                        //     color: Color.fromRGBO(255, 255, 255, 1),
                        //     borderRadius: BorderRadius.circular(6),
                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: Colors.grey,
                        //         blurRadius: 6.0,
                        //         offset: Offset(0, 1),
                        //       ),
                        //     ],
                        //   ),
                        // )
                        Image.asset("assets/images/DepWith.png"),
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
