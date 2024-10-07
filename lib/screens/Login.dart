// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_sign/screens/SignUo.dart';
import 'package:login_sign/widgets/Buttom.dart';
import 'package:login_sign/widgets/Feild.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Schyler"),
                    )),
                SvgPicture.asset("assets/icons/login.svg"),
                FeildText(T: "Email", I: Icon(Icons.email)),
                FeildText(T: "Password", I: Icon(Icons.lock)),
                BottomWid(T: "Login", w: signup(), c: Color(0xffa53ab4)),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Don't have an account ? ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return signup();
                          },
                        ));
                      },
                      child: Container(
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ),
          Positioned(
            height: 130,
            right: 0,
            bottom: 0,
            child: Image.asset("assets/login_bottom.png"),
          ),
          Positioned(
            height: 130,
            top: 0,
            left: 0,
            child: Image.asset("assets/main_top.png"),
          ),
        ],
      ),
    );
  }
}
