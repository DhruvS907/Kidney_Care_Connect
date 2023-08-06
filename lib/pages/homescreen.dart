// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.arrow_back),
                  iconSize: 20.0,
                ),
                SizedBox(width: 20),
                Center(
                  child: Text(
                    'Budget Tracker',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 86, 0, 110)),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                  },
                  iconSize: 30.0,
                  icon: Icon(Icons.person),
                  tooltip: 'Logout',
                )
              ],
            ),
            SizedBox(height: 20.0, width: 20.0),
            Center(
              child: Column(children: [
                SizedBox(height: 20.0, width: 20.0),
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  'Back!',
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ]),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text(
                    'Total',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 120.0,
                  ),
                  Text(
                    '48700',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/expensescreen');
                      },
                      icon: Icon(Icons.keyboard_double_arrow_down))
                ],
              ),
            ),
          ]),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 232, 148, 255),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    title: Text(
                      'New Entry',
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    titlePadding: EdgeInsets.fromLTRB(70, 10, 0, 0),
                    backgroundColor: Colors.deepPurple,
                    content: Container(
                      width: 100,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Category:',
                            style:
                                TextStyle(fontSize: 28.0, color: Colors.white),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Price:',
                            style:
                                TextStyle(fontSize: 28.0, color: Colors.white),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              onPressed: null,
                              child: Icon(
                                Icons.done_outline,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              barrierDismissible: true);
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.purple,
          size: 40.0,
        ),
      ),
    );
  }
}
