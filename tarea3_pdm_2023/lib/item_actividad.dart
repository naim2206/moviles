import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemActividad extends StatelessWidget {
  ItemActividad({super.key, number, name}) {
    this.number = number;
    this.name = name;
  }

  var number;
  var name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Container(
          // height: 120,
          //  width: 120,
          // color: Colors.purple,
          //),
          Image.asset('assets/' + number.toString() + '.jpg',
              height: 120, width: 120),
          Text("Day " + number.toString(), style: TextStyle(fontSize: 11)),
          Text(name),
        ],
      ),
    );
  }
}
