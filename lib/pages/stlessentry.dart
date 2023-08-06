// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'entryclass.dart';

class EntryContainer extends StatelessWidget {
  late final Entry entry;

  EntryContainer({required this.entry});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5.0),
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
          SizedBox(
            width: 120.0,
          ),
          Text(
            '${entry.price}',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 232, 148, 255)),
          )
        ]));
  }
}
