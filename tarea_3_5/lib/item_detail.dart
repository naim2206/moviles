import 'package:flutter/material.dart';
import 'package:tarea_3_5/dummy_data.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({super.key, required this.item});

  final Meal item;

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  Icon icon = const Icon(Icons.star);
  bool iconState = true;
  String snackText = 'Meal no longer in favs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.item.title),
          backgroundColor: Colors.brown.shade900,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    if (iconState == true) {
                      iconState = false;
                      icon = const Icon(Icons.star_border);
                      snackText = 'Meal no longer in favs';
                    } else {
                      iconState = true;
                      icon = const Icon(Icons.star);
                      snackText = 'Meal added to favs';
                    }
                  });
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        snackText,
                        style: const TextStyle(color: Colors.black),
                      ),
                      duration: Duration(seconds: 3),
                      backgroundColor: Colors.grey,
                    ),
                  );
                },
                icon: icon)
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/${widget.item.id}.jpg'),
            const Text(
              'Ingredients',
              style: TextStyle(
                fontSize: 30.0, // Adjust the font size as needed
                color: Colors.yellow, // Set the text color to yellow
              ),
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.9,
              ),
              child: Column(
                children: widget.item.ingredients.map((String texto) {
                  return Text(
                    texto,
                    style: const TextStyle(color: Colors.white),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Steps',
              style: TextStyle(
                fontSize: 30.0, // Adjust the font size as needed
                color: Colors.yellow, // Set the text color to yellow
              ),
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.9,
              ),
              child: Column(
                children: widget.item.steps.map((String texto) {
                  return Text(texto,
                      style: const TextStyle(color: Colors.white));
                }).toList(),
              ),
            ),
          ],
        ));
  }
}
