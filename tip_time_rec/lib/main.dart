import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tip_time_rec/provider/tiptime_provider.dart';

import 'main_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TipTimeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Tip Time Provider'),
          ),
          body: const MainPage()),
    );
  }
}
