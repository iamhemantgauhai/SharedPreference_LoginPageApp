import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mm_tracker_app/screens/recycler/recyclerview_controller.dart';

class RecyclerViewScreen extends StatefulWidget {
  const RecyclerViewScreen({Key? key}) : super(key: key);

  @override
  State<RecyclerViewScreen> createState() => _RecyclerViewScreenState();
}

class _RecyclerViewScreenState extends State<RecyclerViewScreen> {
  TextEditingController myNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                labelText: "Take Any Number",
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (myNumber.text.isNotEmpty == true) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext ctx) =>
                            const RecyclerViewController()));

              }
            },
            child: Text(
              "Enter".toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }
}