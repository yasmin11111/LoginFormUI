// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BottomWid extends StatelessWidget {
  String T;
  Widget w;
  Color c;
  BottomWid({required this.T, required this.w,required this.c});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26.0),
      child: SizedBox(
        height: 50,
        width: 300,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return w;
                },
              ));
            },
            child: Text("$T",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(
              backgroundColor: c,
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            )),
      ),
    );
  }
}
