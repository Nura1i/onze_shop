import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onze_shop/getx/home/home_page_controller.dart';
import 'package:onze_shop/getx/home/home_page_view.dart';

class homeController extends GetxController {
  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.person,
  ];
  var currentIndex;

  List pages = [const profileView(), const homePageView()];

  ChangePage(BuildContext context) {
    if (currentIndex == 0) {
      return Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => const profileView(),
      ));
    } else if (currentIndex == 1) {
      return Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => const homePageView(),
      ));
    }
    update();
  }
}
