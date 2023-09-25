import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/Providers/counter_provider.dart';

import 'home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => CounterProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
