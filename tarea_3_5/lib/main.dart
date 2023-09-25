import 'package:flutter/material.dart';

import 'main_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.brown.shade900, // Cambia el color de fondo aquí
      ),
      home: const MainList(),
    );
  }
}
