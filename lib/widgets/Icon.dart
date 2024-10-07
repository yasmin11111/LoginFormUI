// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconWid extends StatelessWidget {
  String t;
  IconWid({required this.t});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,

      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 247, 212, 249),
        shape: BoxShape.circle,
        border: Border.all(color: Color.fromARGB(255, 206, 97, 193), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: SvgPicture.asset(
          "$t",
          height: 40,
          color: Color.fromARGB(255, 119, 40, 124),
        ),
      ),
    );
  }
}
