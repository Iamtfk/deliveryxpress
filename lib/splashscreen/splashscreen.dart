// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:newapp/onboarding/auth.dart';
import 'package:page_transition/page_transition.dart';
import 'package:newapp/onboarding/login.dart';
import 'dart:async';

class splashscreen extends StatefulWidget {
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
                child: Authpage(),
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 1000))));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 38, 37),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 200,
                  width: 250,
                  child: Lottie.asset('animations/bike.json')),
              RichText(
                text: TextSpan(
                    text: 'Food',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'EX',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w900),
                      ),
                      TextSpan(
                        text: 'press',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w900),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
