import 'package:flutter/material.dart';
import 'package:mm_tracker_app/screens/login/login_screen.dart';
import 'package:mm_tracker_app/screens/recycler/recyclerview_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatefulWidget {
  final bool isLoggedIn;
  const MyApp({Key? key, required this.isLoggedIn}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shared Preference',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: widget.isLoggedIn ? const RecyclerViewController() : const LoginScreen()
    );
  }
}