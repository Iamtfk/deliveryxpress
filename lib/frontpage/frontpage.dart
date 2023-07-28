// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newapp/restuarants/mcdo.dart';
import 'package:page_transition/page_transition.dart';

class frontpage extends StatefulWidget {
  const frontpage({Key? key}) : super(key: key);

  @override
  State<frontpage> createState() => _frontpageState();
}

class _frontpageState extends State<frontpage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 1),
          child: PageViewDemo(),
        ),
        backgroundColor: Color.fromARGB(255, 43, 41, 41),
      ),
    );
  }
}

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  final _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        MyPage1Widget(),
      ],
    );
  }
}

class MyPage1Widget extends StatelessWidget {
  const MyPage1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 10, 9, 9),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 16),
            child: GNav(
                tabBorderRadius: 15,
                gap: 8,
                backgroundColor: Color.fromARGB(255, 27, 23, 23),
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Color.fromARGB(255, 63, 62, 62),
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
          elevation: 100,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
          backgroundColor: Color.fromARGB(255, 27, 21, 21),
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
          backgroundColor: Color.fromARGB(255, 27, 21, 21),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 43, 41, 41),
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25, right: 200, bottom: 25),
                  child: Text(
                    'Hello : )',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w900,
                        fontSize: 25),
                  ),
                ),
                Row(
                  children: [
                    MyBox(
                      lightGreen,
                      textButton: TextButton(
                          style: ButtonStyle(),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    child: item7(),
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1000)));
                          },
                          child: Image.asset('animations/McDo.png')),
                    ),
                    MyBox(
                      lightGreen,
                      textButton: TextButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          child: Image.asset('animations/MM.png')),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyBox(
                      lightGreen,
                      textButton: TextButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          child: Image.asset('animations/Burger.png')),
                    ),
                    MyBox(
                      lightGreen,
                      textButton: TextButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          child: Image.asset('animations/KFC.png')),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyBox(
                      lightGreen,
                      textButton: TextButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          child: Image.asset('animations/Dun.png')),
                    ),
                    MyBox(
                      lightGreen,
                      textButton: TextButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          child: Image.asset('animations/Chick.png')),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyBox(
                      lightGreen,
                      textButton: TextButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          child: Image.asset('animations/Dom.png')),
                    ),
                    MyBox(
                      lightGreen,
                      textButton: TextButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          child: Image.asset('animations/prin.png')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

final lightGreen = Color.fromARGB(255, 27, 27, 27);

final darkGreen = Color.fromARGB(255, 27, 27, 27);

class MyBox extends StatelessWidget {
  final Color color;

  final InkWell? inkwell;

  final TextButton? textButton;

  final double? height;

  final String? text;

  const MyBox(
    this.color, {
    super.key,
    this.height,
    this.text,
    this.textButton,
    this.inkwell,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 27, 27, 27)),
        margin: const EdgeInsets.all(10),
        //  color: color,
        height: (height == null) ? 150 : height,
        child: (textButton == textButton)
            ? textButton
            : TextButton(
                onPressed: () {},
                child: Text('$text',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w900,
                        fontSize: 25)),
              ),
      ),
    );
  }
}
