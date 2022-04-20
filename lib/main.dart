// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          child: MyButton(),
          //Text("Button Here",
          //style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget{
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("My button was tapped");
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.greenAccent,
        ),
      child: const Center(
        child: Text("Click",
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)
        ),
      ),
      ),
    );
  }

}




