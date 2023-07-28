// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newapp/frontpage/frontpage.dart';
import 'package:newapp/onboarding/login.dart';

import 'LoginOrSignup.dart';

class Authpage extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;
  Authpage({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    // ignore: prefer_const_constructors
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: _firebaseAuth.authStateChanges(),
          builder: (contex, snapshot) {
            if (snapshot.hasData) {
              return frontpage();
            } else
              return LoginOrSignup();
          }),
    );
  }
}
