import 'package:flutter/material.dart';

class Prime extends StatefulWidget {
  const Prime({super.key});

  @override
  State<Prime> createState() => _PrimeState();
}

class _PrimeState extends State<Prime> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Prime'));
  }
}
