import 'package:exum_m6/scr/screens/create_acount.dart';
import 'package:exum_m6/scr/screens/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'widgets/chekin_textfild.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {

  void onTap(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccount(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset("assets/images/undraw_city_life_gnpr 1.png"),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: "Let's ",
                            style: TextStyle(
                                color: Color(0xFF1F4C6B),
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                fontFamily: "Lato"),
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            text: " Sign In",
                            style: TextStyle(
                                color: Color(0xFF252B5C),
                                fontWeight: FontWeight.w800,
                                fontSize: 25,
                                fontFamily: "Lato"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "quis nostrud exercitation ullamco laboris nisi ut",
                      style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * .03,
                    ),
                    const Chekkin(),
                    SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * .07
                    ),
                    Column(
                      children: [
                        const Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Color(0xFFECEDF3),
                                thickness: 1,
                                height: 1,
                                endIndent: 10,
                              ),
                            ),
                            Text(
                              "OR",
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: "Lato",
                                color: Color(0xFFA1A5C1),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Color(0xFFECEDF3),
                                thickness: 1,
                                height: 2,
                                indent: 10,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buttons("assets/images/Layout.png"),
                              buttons("assets/images/Facebook - normal.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account?",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF53587A),
                            fontFamily: "Raleway",
                          ),
                        ),
                        GestureDetector(
                          onTap: onTap,
                          child: Text(
                            " Register",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF53587A),
                              fontFamily: "Raleway",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buttons(String path) =>
      SizedBox(
        height: 70,
        width: 158,
        child: FilledButton(
          style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            backgroundColor: const Color(0xFFF5F4F8),
          ),
          onPressed: () {},
          child: Image.asset(path),
        ),
      );
}

