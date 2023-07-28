// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:newapp/frontpage/frontpage.dart';
import 'package:newapp/onboarding/auth.dart';
import 'package:newapp/onboarding/sign_up.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 27, 27, 27),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 120,
                    child: Lottie.asset('animations/bike.json'),
                  ),
                ),
                Text(
                  'welcome back',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 40),
                  child: Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color.fromARGB(255, 44, 42, 42),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 0, 0, 0),
                              blurRadius: 5,
                              spreadRadius: 3),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                        controller: emailController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w900)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 20),
                  child: Row(
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color.fromARGB(255, 44, 42, 42),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 0, 0, 0),
                              blurRadius: 5,
                              spreadRadius: 3),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        style: TextStyle(color: Colors.grey),
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: Color.fromARGB(255, 19, 18, 18),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    blurRadius: 5,
                                    spreadRadius: 3),
                              ]),
                          child: TextButton.icon(
                            onPressed: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.grey,
                                      ),
                                    );
                                  });

                              try {
                                await FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: emailController.text,
                                        password: passwordController.text);
                                Navigator.pop(context);
                              } on FirebaseAuthException catch (e) {
                                Navigator.pop(context);
                                if (e.code == 'user-not-found') {
                                  wrongemail();
                                } else if (e.code == 'wrong-password') {
                                  wrongpassword();
                                }
                              }
                            },
                            icon: Icon(
                              Icons.login_sharp,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Sign in',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/reset');
                        },
                        child: Text(
                          'Forgot password ?',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: Signup(),
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 1000)));
                        },
                        child: Text(
                          'Sign up ',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void wrongemail() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.grey,
            title: Text('wrong email'),
          );
        });
  }

  void wrongpassword() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.grey,
            title: Text('wrong password'),
          );
        });
  }
}
