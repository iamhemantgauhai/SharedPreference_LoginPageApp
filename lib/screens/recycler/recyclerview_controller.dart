import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mm_tracker_app/screens/recycler/recyclerview_screen.dart';

class RecyclerViewController extends StatefulWidget {
  const RecyclerViewController({Key? key}) : super(key: key);

  @override
  State<RecyclerViewController> createState() => _RecyclerViewControllerState();
}

class _RecyclerViewControllerState extends State<RecyclerViewController> {
  TextEditingController? myNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                hintText: "Take Any Number",
                hintStyle: TextStyle(color: Colors.black),
              )),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext ctx) =>
                          const RecyclerViewScreen()));
            },
            child: Text("Enter".toUpperCase()))
      ],
    );
  }
}
