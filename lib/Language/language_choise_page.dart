import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onze_shop/DetailPages/Detail.dart';

class language_choice extends StatefulWidget {
  const language_choice({super.key});

  @override
  State<language_choice> createState() => _language_choiceState();
}

String lan = 'def';

class _language_choiceState extends State<language_choice> {
  Color col = Color.fromARGB(255, 133, 104, 104);
  Color uz = Colors.grey;
  Color rus = Colors.grey;
  String tx = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 223, 223),
      body: Column(
        children: [
          // Container(
          //     margin: EdgeInsets.only(top: 50),
          //     alignment: Alignment.center,
          //     child:const Text(
          //       'Tilni Tanglang',
          //       style: TextStyle(
          //           color: Color.fromARGB(255, 0, 29, 52),
          //           fontSize: 27,
          //           fontWeight: FontWeight.bold,
          //           letterSpacing: 2),
          //     )),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 40),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      rus = Color.fromARGB(255, 10, 79, 135);
                      uz = Colors.grey;
                      tx = 'Вперёд';
                      lan = 'rus';
                    });
                  },
                  child: Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 247, 247, 247)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: SizedBox(
                            width: 70,
                            height: 70,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image.asset(
                                'assets/images/circle_rus.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Русский',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 42, 115),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 40),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      uz = Color.fromARGB(255, 10, 79, 135);
                      rus = Colors.grey;
                      tx = 'Oldinga';
                      lan = 'uz';
                    });
                  },
                  child: Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 247, 247, 247)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: SizedBox(
                            width: 70,
                            height: 70,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image.asset(
                                'assets/images/uz.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "O'zbekcha",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 42, 115),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 98, top: 20),
                child: CircleAvatar(
                  maxRadius: 10,
                  backgroundColor: rus,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 148, top: 20),
                child: CircleAvatar(
                  maxRadius: 10,
                  backgroundColor: uz,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detail(),
                ));
          },
          child: Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.only(left: 40, right: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 23, 92, 213),
                gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 75, 153, 217),
                      Color.fromARGB(255, 13, 72, 174),
                      Color.fromARGB(255, 8, 66, 114)
                    ])),
            child: Text(
              tx,
              style: GoogleFonts.robotoMono(
                  color: Color.fromARGB(255, 167, 190, 220),
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}


