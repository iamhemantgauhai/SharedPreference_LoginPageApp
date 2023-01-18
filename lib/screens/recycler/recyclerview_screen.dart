import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../login/login_screen.dart';
class RecyclerViewScreen extends StatefulWidget {
  const RecyclerViewScreen({super.key});
  @override
  State<RecyclerViewScreen> createState() => _RecyclerViewScreenState();
}
class _RecyclerViewScreenState extends State<RecyclerViewScreen> {
  TextEditingController myNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('RecyclerViewScreen')),
        body: Column(children: [
          Container(
            color: Colors.white,
            height: 80,
            width: 300,
            child: TextFormField(
              controller: myNumber,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              cursorColor: Colors.blue,
              decoration: const InputDecoration(
                labelText: "Take Any Number",
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                if (myNumber.text.isNotEmpty == true) {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(builder: (context, setState) {
                          return WillPopScope(
                              onWillPop: () {
                                return Future.value(true);
                              },
                              child: Material(
                                child: Container(
                                  padding: const EdgeInsets.all(16.0),
                                  width: double.infinity,
                                  child: Column(
                                      children: [
                                        Expanded(
                                          child: Container(
                                                padding: const EdgeInsets.all(16.0),
                                                width: double.infinity,
                                                child: SingleChildScrollView(
                                                  child: AlertDialog(
                                                    title: ListView.builder(
                                                        shrinkWrap: true,
                                                        itemCount: int.parse(
                                                            myNumber.text),
                                                        itemBuilder:
                                                            (context, index) {
                                                          return ListTile(
                                                              leading: const Image(
                                                                  image: NetworkImage(
                                                                      "https://cms-assets.tutsplus.com/uploads/users/369/posts/26629/preview_image/whats-new-in-android-studio-2.2.jpg")),
                                                              subtitle: Center(
                                                                  child: Text(
                                                                      'Image ${index+1}')));
                                                        }))),
                                              ),
                                          ),
                                        Container(
                                            height: 80,
                                            width: 300,
                                            color: Colors.white,
                                            child: Stack(children: [
                                              Center(
                                                  child: ElevatedButton(
                                                      onPressed: () async {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (BuildContext ctx) =>
                                                                const LoginScreen()));
                                                        SharedPreferences prefs =
                                                        await SharedPreferences.getInstance();
                                                        prefs.setBool('isLoggedIn', false);
                                                      },
                                                      style: ButtonStyle(
                                                          backgroundColor:
                                                          MaterialStateProperty.all(Colors.red)),
                                                      child: Text("Log Out".toUpperCase())))
                                            ]))],
                                    ),
                                ),
                              ));
                        });
                      });
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setBool('isLoggedIn', true);
                }
              },
              child: Text("Enter".toUpperCase())),
        ]))                                                                                                                                                                                                                                                                                                                                                                                                                                            ;
  }
}
