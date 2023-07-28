// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:newapp/onboarding/auth.dart';
import 'package:newapp/restuarants/detailscreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../frontpage/frontpage.dart';

Widget drinks(BuildContext context, collection) {
  return SizedBox(
    height: 350,
    width: 250,
    child: StreamBuilder(
      stream: FirebaseFirestore.instance.collection('Drinks').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        final CollectionReference drinks =
            FirebaseFirestore.instance.collection('Drinks');
        if (streamSnapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Lottie.asset('animations/food.json'),
          );
        }
        return PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: streamSnapshot.data?.docs.length,
            itemBuilder: (context, index) {
              final DocumentSnapshot documentSnapshot =
                  streamSnapshot.data!.docs[index];
              return GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child:
                              detailscreen(documentSnapshot: documentSnapshot),
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 1000)));
                },
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 250,
                          child: Image.network(documentSnapshot['image']),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 25),
                        Text(
                          documentSnapshot['name'],
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 116, 114, 114)),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.nairaSign,
                              color: Colors.grey,
                            ),
                            Text(
                              documentSnapshot['price'].toString(),
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            });
      },
    ),
  );
}

Widget burger(BuildContext context, collection) {
  return SizedBox(
    height: 350,
    width: 250,
    child: StreamBuilder(
      stream: FirebaseFirestore.instance.collection('Burger').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        final CollectionReference burger =
            FirebaseFirestore.instance.collection('Burger');
        if (streamSnapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Lottie.asset('animations/food.json'),
          );
        }
        return PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: streamSnapshot.data?.docs.length,
            itemBuilder: (context, index) {
              final DocumentSnapshot documentSnapshot =
                  streamSnapshot.data!.docs[index];
              return GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child:
                              detailscreen(documentSnapshot: documentSnapshot),
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 1000)));
                },
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 250,
                          child: Image.network(documentSnapshot['image']),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 10),
                        Text(
                          documentSnapshot['name'],
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 116, 114, 114)),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.nairaSign,
                              color: Colors.grey,
                            ),
                            Text(
                              documentSnapshot['price'].toString(),
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            });
      },
    ),
  );
}

Widget combo(BuildContext context, collection) {
  return SizedBox(
    height: 350,
    width: 250,
    child: StreamBuilder(
      stream: FirebaseFirestore.instance.collection('Combo').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        final CollectionReference burger =
            FirebaseFirestore.instance.collection('Combo');
        if (streamSnapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Lottie.asset('animations/food.json'),
          );
        }
        return PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: streamSnapshot.data?.docs.length,
            itemBuilder: (context, index) {
              final DocumentSnapshot documentSnapshot =
                  streamSnapshot.data!.docs[index];
              return GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child:
                              detailscreen(documentSnapshot: documentSnapshot),
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 1000)));
                },
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 250,
                          child: Image.network(documentSnapshot['image']),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 25),
                        Text(
                          documentSnapshot['name'],
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 116, 114, 114)),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.nairaSign,
                              color: Colors.grey,
                            ),
                            Text(
                              documentSnapshot['price'].toString(),
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            });
      },
    ),
  );
}
