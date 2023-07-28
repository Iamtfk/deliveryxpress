// ignore_for_file: library_private_types_in_public_api, camel_case_types, unnecessary_this, no_logic_in_create_state, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newapp/calculations.dart';
import 'package:newapp/restuarants/mcdo.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class detailscreen extends StatefulWidget with ChangeNotifier {
  final DocumentSnapshot documentSnapshot;

  detailscreen({super.key, required this.documentSnapshot});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  int tee = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 14, 12, 12),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: const item7(),
                      type: PageTransitionType.fade,
                      duration: const Duration(milliseconds: 1000)));
            },
            icon: const Icon(Icons.arrow_back_ios_new),
            color: Colors.grey),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<Calculation>(context, listen: false).removedata();
            },
            icon: const Icon(FontAwesomeIcons.trash),
            color: Colors.red,
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 14, 12, 12),
        child: Column(
          children: [imagedata(), namedata(), sb(), cartdetail(), fab()],
        ),
      ),
    );
  }

  Widget imagedata() {
    return Center(
      child: SizedBox(
        height: 250,
        child: Container(
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.network(widget.documentSnapshot['image']),
        ),
      ),
    );
  }

  Widget namedata() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 1),
          child: Text(
            widget.documentSnapshot['name'],
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.w900, color: Colors.grey),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 28),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.nairaSign,
                    color: Colors.grey,
                  ),
                  Text(
                    widget.documentSnapshot['price'].toString(),
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  Widget sb() {
    return SizedBox(height: 55);
  }

  Widget cartdetail() {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Color.fromARGB(255, 31, 29, 29),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                      blurRadius: 5,
                      spreadRadius: 1)
                ]),
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add more',
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.documentSnapshot['name'],
                        style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      IconButton(
                          onPressed: () {
                            Provider.of<Calculation>(context, listen: false)
                                .decreaseqtty();
                          },
                          icon: Icon(
                            EvaIcons.minus,
                            color: Colors.grey,
                          )),
                      Text(
                        Provider.of<Calculation>(context, listen: true)
                            .getqtty
                            .toString(),
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      IconButton(
                          onPressed: () {
                            Provider.of<Calculation>(context, listen: false)
                                .increaseqtty();
                          },
                          icon: Icon(
                            EvaIcons.plus,
                            color: Colors.grey,
                          )),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget fab() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            Provider.of<Calculation>(context, listen: false)
                .Addtocart(context, [
              Image.network(widget.documentSnapshot['image']),
              widget.documentSnapshot['name'],
              widget.documentSnapshot['price'].toString(),
            ]);
          },
          child: Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 48, 34),
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: Text(
                'Add to cart',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Stack(
          children: [
            FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 255, 48, 34),
              onPressed: () {},
              child: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
            Positioned(
              right: 10,
              child: Text(
                '$tee',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
