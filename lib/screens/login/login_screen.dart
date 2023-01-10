import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mm_tracker_app/screens/login/login_controller.dart';
import 'package:mm_tracker_app/screens/welcome/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('Employee ID');
  runApp(MaterialApp(home: email == null ? const LoginScreen() : const WelcomeScreen()));
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formGlobalKey = GlobalKey < FormState > ();
  final storePassword = const Key('storePassword');
  final storeID = const Key('storeID');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Form(
                child: Column(children: [
          const SizedBox(
            height: 250,
            width: 600,
          ),
          Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)))),
          Container(
              color: Colors.white,
              height: 80,
              width: 300,
              child: TextFormField(
                  key: storeID,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: employeeIDValidate,
                  maxLength: 6,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  cursorColor: Colors.blue,
                  decoration: const InputDecoration(
                      labelText: "Employee ID",
                      alignLabelWithHint: true,
                      hintStyle: TextStyle(color: Colors.black),
                      icon: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.person))))),
          Container(
              height: 80,
              width: 300,
              color: Colors.white,
              child: Form(
                  child: TextFormField(
                      key: storePassword,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: passwordValidate,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                          labelText: "Password",
                          alignLabelWithHint: true,
                          hintStyle: const TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.remove_red_eye),
                              onPressed: () {}),
                          icon: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(Icons.lock)))))),
          Container(
              height: 80,
              width: 300,
              color: Colors.white,
              child: Stack(children: [
                Center(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (BuildContext ctx) => const WelcomeScreen()));
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsetsDirectional.all(20.0),
                          dismissDirection: DismissDirection.down,
                          backgroundColor: Colors.green,
                          content: Text("Logged In")
                        ));},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                        child: Text("Login".toUpperCase())))
              ])),
          Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              width: 300,
              child: Stack(children: [
                TextButton(
                    onPressed: () {},
                    child: const Text('Forget Password?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline)))
              ]))
        ]))));
  }
}
