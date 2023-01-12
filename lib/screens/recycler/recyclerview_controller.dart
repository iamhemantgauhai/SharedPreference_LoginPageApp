import 'package:flutter/material.dart';
import 'package:mm_tracker_app/screens/recycler/recyclerview_screen.dart';

import '../login/login_screen.dart';

class RecyclerViewController extends StatefulWidget {
  const RecyclerViewController({Key? key}) : super(key: key);
  @override
  State<RecyclerViewController> createState() => _RecyclerViewControllerState();
}

class _RecyclerViewControllerState extends State<RecyclerViewController> {
  var previousData = const RecyclerViewScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          child: ListView.builder(
              itemCount: 10,
              /*int.parse(myNumber.text),*/
              itemBuilder: (context, index) {
                return ListTile(
                    leading: const Image(
                        image: NetworkImage(
                            "https://cms-assets.tutsplus.com/uploads/users/369/posts/26629/preview_image/whats-new-in-android-studio-2.2.jpg")),
                    title: const Image(
                        image: NetworkImage(
                            "https://cms-assets.tutsplus.com/uploads/users/369/posts/26629/preview_image/whats-new-in-android-studio-2.2.jpg")),
                    subtitle: Center(child: Text('Image $index')),
                    trailing: const Image(
                        image: NetworkImage(
                            "https://cms-assets.tutsplus.com/uploads/users/369/posts/26629/preview_image/whats-new-in-android-studio-2.2.jpg")));
              })),
      Container(
          height: 80,
          width: 300,
          color: Colors.white,
          child: Stack(children: [
            Center(
                child: ElevatedButton(
                    onPressed: () async {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext ctx) =>
                                  const LoginScreen()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    child: Text("Log Out".toUpperCase())))
          ]))
    ]));
  }
}
