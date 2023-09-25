import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/counter_provider.dart';

class Multiplica extends StatefulWidget {
  const Multiplica({super.key});

  @override
  State<Multiplica> createState() => _MultiplicaState();
}

class _MultiplicaState extends State<Multiplica> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            context.watch<CounterProvider>().counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          ElevatedButton(
              onPressed: () {
                context.read<CounterProvider>().multi2();
              },
              child: const Text('x2'))
        ],
      ),
    );
  }
}
