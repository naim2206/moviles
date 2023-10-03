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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      context.read<CounterProvider>().multi2();
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Se multiplico x2',
                          ),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    },
                    child: const Text('x2')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      context.read<CounterProvider>().multi3();
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Se multiplico x3',
                          ),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    },
                    child: const Text('x3')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Se multiplico x5',
                          ),
                          duration: Duration(seconds: 3),
                        ),
                      );
                      context.read<CounterProvider>().multi5();
                    },
                    child: const Text('x5')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
