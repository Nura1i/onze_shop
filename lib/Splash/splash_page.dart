import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/language');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: TweenAnimationBuilder(
              tween: Tween(begin: 0.3, end: 2.0),
              duration: const Duration(seconds: 1),
              builder: (context, value, child) => Transform.scale(
                    scale: value,
                    child: Image.asset(
                      'assets/images/splash_onze_new.jpg',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ))),
    );
  }
}
