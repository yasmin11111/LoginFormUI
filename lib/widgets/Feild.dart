// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FeildText extends StatelessWidget {
  String T;
  Icon I;

  FeildText({required this.T, required this.I});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SizedBox(
        height: 50,
        width: 300,
        child: TextField(
          obscuringCharacter: '*',
          obscureText: true,
          decoration: InputDecoration(
            hintText: "$T : ",
            fillColor: Color(0xffe4b1ed),
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(20)),
            prefixIcon: I,
          ),
        ),
      ),
    );
  }
}
