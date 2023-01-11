import 'package:flutter/material.dart';
import 'package:mm_tracker_app/screens/recycler/recyclerview_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recycler View'),
      ),
      body: const RecyclerViewScreen()
    );
  }
}
