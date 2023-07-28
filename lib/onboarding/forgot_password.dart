// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class resetpassword extends StatefulWidget {
  const resetpassword({Key? key}) : super(key: key);

  @override
  State<resetpassword> createState() => _resetpasswordState();
}

class _resetpasswordState extends State<resetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 239, 179),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              icon: Icon(Icons.arrow_back_ios,color:Color.fromARGB(255, 0, 0, 0), )),
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 243, 239, 179),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                'Enter Mail/Number',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 243, 239, 179),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 247, 241, 159),
                        offset: Offset(6, 3),
                        blurRadius: 6,
                        spreadRadius: 3,
                      ),
                      BoxShadow(
                        color: Color.fromARGB(255, 252, 246, 167),
                        offset: Offset(-6, -3),
                        blurRadius: 6,
                        spreadRadius: 3,
                      )
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Email/Phone number'),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 252, 220, 124),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 252, 246, 167),
                              offset: Offset(6, 2),
                              blurRadius: 6,
                              spreadRadius: 3,
                            ),
                            BoxShadow(
                              color: Color.fromARGB(255, 252, 246, 167),
                              offset: Offset(-6, -2),
                              blurRadius: 6,
                              spreadRadius: 3,
                            )
                          ]),
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/newpassword');
                        },
                        icon: Icon(Icons.arrow_forward_ios),
                        label: Text(
                          'Enter',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
