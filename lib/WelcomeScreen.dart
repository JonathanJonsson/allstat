// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:allstat/MainPage.dart';
import 'package:flutter/material.dart';

import 'NavButton.dart';

//WelcomeScreen

void main() {
  runApp(const WelcomeScreen());
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


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
          child: WelcomeButton(),
        ),
      ),
    );
  }
}

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        print("My button was tapped");
      },
      child: ElevatedButton(
        style: ButtonStyle (
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent)
        ),
        onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MainPage()),
            );
          //Navigate to new screen here
        },
        child: const Text("Welcome!"),
      ),
    );


  }
}

