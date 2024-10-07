// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_sign/screens/Login.dart';
import 'package:login_sign/screens/SignUo.dart';
import 'package:login_sign/widgets/Buttom.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Welcome",
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Schyler"),
              ),
            )),
            SizedBox(
              child: SvgPicture.asset("assets/icons/chat.svg"),
              height: 450,
            ),
            BottomWid(T: "Login", w: Login(), c: Color(0xff7e2e84)),
            BottomWid(
                T: "Sign Up",
                w: signup(),
                c: Color.fromARGB(255, 198, 176, 226)),
          ],
        ),
        Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/main_top.png",
              height: 110,
            )),
        Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/main_bottom.png", height: 110)),
      ],
    ));
  }
}
