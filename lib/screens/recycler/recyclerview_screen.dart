import 'package:flutter/material.dart';

class RecyclerViewScreen extends StatefulWidget {
  const RecyclerViewScreen({Key? key}) : super(key: key);

  @override
  State<RecyclerViewScreen> createState() => _RecyclerViewScreenState();
}

class _RecyclerViewScreenState extends State<RecyclerViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Image(
                image: NetworkImage(
                    "https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png"),
              ),
              title: const Image(
                image: NetworkImage(
                    "https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png"),
              ),
              subtitle: Center(
                child: Text('Image $index'),
              ),
              trailing: const Image(
                image: NetworkImage(
                    "https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png"),
              ),
            );
          },
        ),
      ),
    );
  }
}
