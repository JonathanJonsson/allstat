// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.



import 'package:flutter/material.dart';

 class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String buttonText = "";

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
            //Navigate to new screen here
          },
          child: Text(buttonText),
      ),
    );


  }
}



