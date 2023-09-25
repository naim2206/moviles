import 'package:flutter/material.dart';

import 'food_list.dart';

class MainList extends StatefulWidget {
  const MainList({super.key});

  @override
  State<MainList> createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Quick & Easy'),
          backgroundColor: Colors.brown.shade900),
      body: FoodList(),
    );
  }
}
