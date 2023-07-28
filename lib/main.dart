// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newapp/calculations.dart';
import 'package:newapp/frontpage/frontpage.dart';
import 'package:newapp/onboarding/auth.dart';
import 'package:newapp/restuarants/detailscreen.dart';
import 'package:newapp/restuarants/mcdo.dart';

import 'package:newapp/onboarding/login.dart';
import 'package:newapp/onboarding/sign_up.dart';
import 'package:newapp/onboarding/forgot_password.dart';
import 'package:newapp/onboarding/new_password.dart';
import 'package:provider/provider.dart';

import 'splashscreen/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Calculation()),
        //ChangeNotifierProvider.value(value: detailscreen(documentSnapshot: ))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splashscreen(),
        routes: {
          '/signUp': (context) => Signup(),
          '/reset': (context) => resetpassword(),
          '/newpassword': (context) => newpassword(),
          '/signin': (context) => Login(),
          '/frontpage': (context) => frontpage(),
          '/item7': (context) => item7(),
        },
      ),
    );
  }
}
