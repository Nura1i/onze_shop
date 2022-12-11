import 'package:flutter/material.dart';
import 'package:onze_shop/Language/language_choise_page.dart';
import 'package:onze_shop/getx/home/home/home_view.dart';
import 'DetailPages/Detail.dart';
import 'Splash/splash_page.dart';
import 'getx/home/profile/profile_view.dart';
import 'login_page/login_page.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/detail': (context) => const Detail(),
          '/language': (context) => const language_choice()
        },
        home: loginPage());
  }
}
