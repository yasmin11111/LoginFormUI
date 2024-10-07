// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_sign/screens/Login.dart';
import 'package:login_sign/widgets/Buttom.dart';
import 'package:login_sign/widgets/Feild.dart';
import 'package:login_sign/widgets/Icon.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Schyler"),
                    )),
                SizedBox(
                    height: 270,
                    child: SvgPicture.asset("assets/icons/signup.svg")),
                FeildText(T: "Name ", I: Icon(Icons.person)),
                FeildText(T: "Email", I: Icon(Icons.email)),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                    height: 50,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password : ",
                        fillColor: Color(0xffe4b1ed),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                      ),
                    ),
                  ),
                ),
                BottomWid(T: "Login", w: Login(), c: Color(0xff7e2e84)),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Already have an account ? ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Login();
                          },
                        ));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: const Color.fromARGB(255, 223, 124, 240),
                          endIndent: 15,
                          indent: 30,
                        ),
                      ),
                      Text("OR"),
                      Expanded(
                          child: Divider(
                        thickness: 2,
                        color: const Color.fromARGB(255, 223, 124, 240),
                        indent: 15,
                        endIndent: 30,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconWid(t: "assets/icons/twitter.svg"),
                        SizedBox(
                          width: 20,
                        ),
                        IconWid(t: "assets/icons/google-plus.svg"),
                        SizedBox(
                          width: 20,
                        ),
                        IconWid(t: "assets/icons/facebook.svg"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            height: 90,
            right: 0,
            bottom: 0,
            child: Image.asset("assets/login_bottom.png"),
          ),
          Positioned(
            height: 90,
            top: 0,
            left: 0,
            child: Image.asset("assets/signup_top.png"),
          ),
        ],
      ),
    );
  }
}
