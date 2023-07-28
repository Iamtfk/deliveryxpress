import 'package:flutter/cupertino.dart';
import 'package:newapp/onboarding/login.dart';
import 'package:newapp/onboarding/sign_up.dart';

class LoginOrSignup extends StatefulWidget {
  const LoginOrSignup({super.key});

  @override
  State<LoginOrSignup> createState() => LoginOrSignupState();
}

class LoginOrSignupState extends State<LoginOrSignup> {
  bool showLogin = true;
  void tooglePages() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return Login();
    } else {
      return Signup();
    }
  }
}
