// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures, camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newapp/firebase/firebasedata.dart';
import 'package:newapp/frontpage/frontpage.dart';
import 'package:page_transition/page_transition.dart';

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class item7 extends StatefulWidget {
  const item7({Key? key}) : super(key: key);

  @override
  State<item7> createState() => _item7State();
}

class _item7State extends State<item7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 14, 12, 12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 16),
          child: GNav(
              tabBorderRadius: 15,
              gap: 8,
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade900,
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'home',
                ),
                GButton(
                  icon: Icons.location_pin,
                  text: 'location',
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: 'cart',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'profile',
                ),
              ]),
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            height: 50,
            color: Color.fromARGB(255, 39, 38, 37),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    FontAwesomeIcons.search,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: frontpage(),
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 1000)));
                    },
                    child: Text('frontpage')),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 27, 27, 27),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 18, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FittedBox(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 8),
                  child: Text(
                    'DRINKS / SODA',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Color.fromARGB(255, 31, 29, 29),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ]),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [drinks(context, 'collection')],
              ),
            ),
            SizedBox(height: 35),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'BURGER',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Color.fromARGB(255, 31, 29, 29),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ]),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [burger(context, 'collection')],
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'COMBO DEALS',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Color.fromARGB(255, 26, 25, 25),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 5, 5, 5),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ]),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [combo(context, 'collection')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
