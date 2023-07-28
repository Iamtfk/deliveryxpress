// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class newpassword extends StatefulWidget {
  const newpassword({Key? key}) : super(key: key);

  @override
  State<newpassword> createState() => _newpasswordState();
}

class _newpasswordState extends State<newpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 239, 179),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/reset');
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 8, 8, 6),
            )),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 243, 239, 179),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose new password',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 50),
            Text('New password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            SizedBox(
              height: 10,
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
                    ),
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: '  ********'),
              ),
            ),
            SizedBox(height: 35),
            Text('Confirm new password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            SizedBox(
              height: 15,
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
                    border: InputBorder.none, hintText: '  ********'),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Container(
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
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color.fromARGB(255, 15, 14, 9),
                      ),
                      label: Text(
                        'Confirm',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
