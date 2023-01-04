import 'dart:async';
import 'package:flutter/material.dart';
import 'package:native_splash_screen/result.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ResultPage(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: FlutterLogo(size: MediaQuery.of(context).size.height),
    );
  }
}
