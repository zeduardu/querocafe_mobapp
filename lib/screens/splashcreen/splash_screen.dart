import 'dart:async';
import 'package:flutter/material.dart';
import 'package:querocafe_mobapp/routes/app_routes.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => {
        Navigator.pushNamed(context, AppRoutes.welcome),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 232, 212),
      body: Stack(
        children: <Widget>[
          const Center(
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              width: 128,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pattern.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
