import 'package:flutter/material.dart';
import 'package:tarea_3_5/dummy_data.dart';
import 'package:tarea_3_5/item_detail.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.title,
      required this.time,
      required this.type,
      required this.price,
      required this.image,
      required this.item});

  final title, type, price, time, image;
  final Meal item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ItemDetail(
                      item: item,
                    )));
      },
      child: Container(
        padding: const EdgeInsets.all(10.0), // Agrega padding
        child: Stack(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/${item.id}.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  color: Colors.black.withOpacity(0.6),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.alarm,
                                color: Colors.white,
                              ),
                            ),
                            Text(time.toString() + ' min',
                                style: const TextStyle(
                                  color: Colors.white,
                                )),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.work,
                                color: Colors.white,
                              ),
                            ),
                            Text(type.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                )),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.attach_money,
                                color: Colors.white,
                              ),
                            ),
                            Text(price,
                                style: const TextStyle(
                                  color: Colors.white,
                                )),
                          ],
                        )
                      ])),
            )
          ],
        ),
      ),
    );
  }
}
