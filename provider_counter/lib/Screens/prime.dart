import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/counter_provider.dart';

class Prime extends StatefulWidget {
  const Prime({super.key});

  @override
  State<Prime> createState() => _PrimeState();
}

class _PrimeState extends State<Prime> {
  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }
    if (number == 2) {
      return true;
    }
    if (number % 2 == 0) {
      return false;
    }

    for (int i = 3; i * i <= number; i += 2) {
      if (number % i == 0) {
        return false;
      }
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.watch<CounterProvider>().counter.toString(),
          style: const TextStyle(fontSize: 40),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
        ),
        Center(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isPrime(context.watch<CounterProvider>().counter)
                      ? Colors.green
                      : Colors.blue),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Primo',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              )),
        )
      ],
    );
  }
}
