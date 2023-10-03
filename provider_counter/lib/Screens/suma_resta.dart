import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/Providers/counter_provider.dart';

class SumaResta extends StatefulWidget {
  const SumaResta({super.key});

  @override
  State<SumaResta> createState() => _SumaRestaState();
}

class _SumaRestaState extends State<SumaResta> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.watch<CounterProvider>().counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      context.read<CounterProvider>().increment();
                    },
                    child: const Icon(Icons.add)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      context.read<CounterProvider>().decrement();
                    },
                    child: const Icon(Icons.exposure_minus_1)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      context.read<CounterProvider>().restart();
                    },
                    child: const Icon(Icons.restart_alt)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
