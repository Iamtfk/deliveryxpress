import 'package:flutter/material.dart';
import 'new_password.dart';
import 'login.dart';
import 'sign_up.dart';
import 'forgot_password.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    routes: {
      '/signUp': (context) => Signup(),
      '/reset': (context) => resetpassword(),
      '/newpassword': (context) => newpassword(),
    },
  ));
}
