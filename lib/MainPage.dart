import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.greenAccent)),
        backgroundColor: Color.fromARGB(255, 124, 124, 124),
      ),
      title: 'Welcome to Flutter',
        home: const Scaffold(
        backgroundColor: Color.fromARGB(255, 124, 124, 124),
    body: Center(
    child: const Text("Hello")),
    ),
    );
  }

}

