import 'package:flutter/material.dart';
import 'dart:async';
import '../login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.network(
        'https://lh3.googleusercontent.com/p/AF1QipO5w1q1PWz4SIVuu6XO4z_ArWipslqu5K2mSe1_=w768-h768-n-o-v1',
        height: 25,
        width: 25,
      ),
    );
  }
}

