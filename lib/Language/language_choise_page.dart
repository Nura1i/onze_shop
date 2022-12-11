import 'dart:ui';

import 'package:lottie/lottie.dart';
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
  Color col = const Color.fromARGB(255, 133, 104, 104);
  Color uz = Colors.grey;
  Color rus = Colors.grey;
  String tx = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 223, 223),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 40),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      rus = const Color.fromARGB(255, 10, 79, 135);
                      uz = Colors.grey;
                      tx = 'Вперёд';
                      lan = 'rus';
                    });
                  },
                  child: Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 226, 92, 82),
                            blurRadius: 3,
                            spreadRadius: 2,
                            offset: Offset(
                              2.0,
                              2.0,
                            )),
                        BoxShadow(
                            color: Color.fromARGB(255, 6, 4, 50),
                            blurRadius: 10,
                            spreadRadius: 2.0,
                            offset: Offset(
                              3.0,
                              3.0,
                            )),
                        BoxShadow(
                            color: Color.fromARGB(255, 6, 4, 50),
                            blurRadius: 3,
                            spreadRadius: 0.3,
                            offset: Offset(
                              -1.0,
                              -1.0,
                            ))
                      ],
                      borderRadius: BorderRadius.circular(31),
                      color: const Color.fromARGB(255, 247, 247, 247),
                    ),
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
                      uz = const Color.fromARGB(255, 10, 79, 135);
                      rus = Colors.grey;
                      tx = 'Oldinga';
                      lan = 'uz';
                    });
                  },
                  child: Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.red,
                            blurRadius: 1,
                            spreadRadius: 3,
                            offset: Offset(
                              1.0,
                              1.0,
                            )),
                        BoxShadow(
                            color: Colors.green,
                            blurRadius: 5,
                            spreadRadius: 2.0,
                            offset: Offset(
                              3.0,
                              3.0,
                            )),
                        BoxShadow(
                            color: Colors.blue,
                            blurRadius: 3,
                            spreadRadius: 0.3,
                            offset: Offset(
                              -1.0,
                              -1.0,
                            ))
                      ],
                      borderRadius: BorderRadius.circular(31),
                      color: const Color.fromARGB(255, 247, 247, 247),
                    ),
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(20),
                    //     color: Color.fromARGB(255, 247, 247, 247)),
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
                        ),
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
          Container(
            child: Lottie.network(
                'https://assets2.lottiefiles.com/packages/lf20_q2qsp9yg.json'),
          )
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
            height: MediaQuery.of(context).size.height * 0.05,
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.03),
            alignment: Alignment.center,

            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 15, 56, 90),
                    Color.fromARGB(255, 13, 72, 174),
                    Color.fromARGB(255, 8, 66, 114)
                  ]),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 15, 56, 90),
                    blurRadius: 0,
                    spreadRadius: 2,
                    offset: Offset(
                      3.0,
                      3.0,
                    )),
                BoxShadow(
                    color: Color.fromARGB(255, 10, 57, 96),
                    blurRadius: 3,
                    spreadRadius: 0.3,
                    offset: Offset(
                      2.0,
                      2.0,
                    ))
              ],
              borderRadius: BorderRadius.circular(31),
              color: const Color.fromARGB(255, 247, 247, 247),
            ),
            child: Text(
              tx,
              style: GoogleFonts.robotoMono(
                  color: Color.fromARGB(255, 176, 198, 226),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    const Shadow(
                        color: Color.fromARGB(255, 15, 56, 90),
                        offset: Offset(2, 2))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
