import 'package:betpro/second_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40,
        width: 130,
        color: Color(0Xff0558B4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 2,
              color: Colors.yellow,
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 30,
              height: 2,
              color: Colors.yellow,
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 30,
              height: 2,
              color: const Color.fromARGB(255, 255, 255, 255),
            )
          ],
        ),
      ),
    );
  }
}

class Recive extends StatefulWidget {
  const Recive({super.key});

  @override
  State<Recive> createState() => _ReciveState();
}

class _ReciveState extends State<Recive> {
  var userinput = '';
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0Xff0558B4),
      appBar: AppBar(
        backgroundColor: Color(0Xff0558B4),
        flexibleSpace: CustomAppBar(),
        leading: TextButton(
            onPressed: () {},
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Color.fromARGB(255, 255, 255, 255),
            )),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Enter amount to deposit in your \n betpro exchange account',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const Text('Minimum Account is rs.1000.00',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
              const SizedBox(
                height: 60,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      "Rs. ",
                      style: const TextStyle(
                        fontSize: 46,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      userinput.toString(),
                      style: const TextStyle(
                        fontSize: 46,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow
                          .visible, // or TextOverflow.clip depending on your preference
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: queryData.size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(
                      title: '1',
                      onPress: () {
                        userinput += '1';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '2',
                      onPress: () {
                        userinput += '2';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '3',
                      onPress: () {
                        userinput += '3';
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(
                      title: '4',
                      onPress: () {
                        userinput += '4';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '5',
                      onPress: () {
                        userinput += '5';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '6',
                      onPress: () {
                        userinput += '6';
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(
                      title: '7',
                      onPress: () {
                        userinput += '7';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '8',
                      onPress: () {
                        userinput += '8';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: '9',
                      onPress: () {
                        userinput += '9';
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(title: '', onPress: () {}),
                    MyButton(
                        title: '0',
                        onPress: () {
                          userinput += '0';
                          setState(() {});
                        }),
                    TextButton(
                        onPressed: () {
                          if (userinput.isNotEmpty) {
                            userinput =
                                userinput.substring(0, userinput.length - 1);
                            setState(() {});
                          }
                        },
                        child: Container(
                          width: 15,
                          height: 50,
                          child: Center(
                            child: Icon(
                              Icons.clear,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5196D7)),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;

  const MyButton({
    required this.title,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0Xff0558B4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
