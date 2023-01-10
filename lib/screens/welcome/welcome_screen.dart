import 'package:flutter/material.dart';
import 'package:mm_tracker_app/screens/login/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('You Logged In'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const Text('Employee ID: '),
          const Text('Password: '),
          ElevatedButton(
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.remove('Employee ID');
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: ( BuildContext ctx) => const LoginScreen()));
            },
            child: const Text('Logout'),
          ),
        ],),
      ),
    );
  }
}