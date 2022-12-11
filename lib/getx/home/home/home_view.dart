import 'package:flutter/material.dart';
import 'package:onze_shop/getx/home/home_page_view.dart';
import 'package:onze_shop/getx/home/profile/profile_view.dart';

class home extends StatefulWidget {
  @override
  homeState createState() => homeState();
}

class homeState extends State<home> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    dynamic screens = [homePageView(), profilePage()];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF15F60),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text('APP NAME')),
      bottomNavigationBar: Container(
        //color: Colors.deepPurpleAccent,
        height: size.width * .155,
        child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .028),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                // print(index);
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: size.width * .03),
                Icon(listOfIcons[index],
                    size: size.width * .08, color: Colors.white),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    top: index == currentIndex ? 0 : size.width * .029,
                    right: size.width * .1422,
                    left: size.width * .1472,
                  ),
                  width: size.width * .153,
                  height: index == currentIndex ? size.width * .014 : 0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.person,
  ];
}
