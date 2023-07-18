// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'entryclass.dart';
//import 'stlessentry.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Entry> entries = [
    Entry('Grocery', -300),
    Entry('Bills', -1000),
    Entry('Salary', 50000)
  ];
  Widget returnentry(entry) {
    return Row(
      children: [
        Flexible(
          flex: 9,
          child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(children: [
                Padding(padding: EdgeInsets.all(10.0)),
                Text(
                  entry.category,
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '${entry.price}',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 232, 148, 255)),
                    ),
                  ),
                ),
              ])),
        ),
        Flexible(
          flex: 1,
          child: IconButton(
            onPressed: null,
            icon: Icon(Icons.delete),
            iconSize: 20.0,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          icon: Icon(Icons.arrow_back),
                          iconSize: 30.0,
                        ),
                        SizedBox(width: 20),
                        Center(
                          child: Text(
                            'Budget Tracker',
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 86, 0, 110)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 70,
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
                              onPressed: null,
                              icon: Icon(Icons.keyboard_double_arrow_down)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ...entries.map((entry) => returnentry(entry)).toList(),
                  ],
                ))),
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
                              style: TextStyle(
                                  fontSize: 28.0, color: Colors.white),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Price:',
                              style: TextStyle(
                                  fontSize: 28.0, color: Colors.white),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                onPressed: null,
                                child: Icon(
                                  Icons.done,
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
        ));
  }
}
