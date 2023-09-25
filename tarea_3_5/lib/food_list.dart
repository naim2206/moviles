import 'package:flutter/material.dart';
import 'package:tarea_3_5/dummy_data.dart';

import 'list_idem.dart';

class FoodList extends StatelessWidget {
  FoodList({super.key});

  final List<Meal> foodList = dummyMeals;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          foodList.length,
          (index) => ListItem(
              title: foodList[index].title,
              time: foodList[index].duration,
              type: foodList[index].complexity,
              price: foodList[index].affordability,
              image: foodList[index].imageUrl,
              item: foodList[index]),
        ),
      ),
    );
  }
}
