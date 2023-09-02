import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Text('32 caracteres'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('ajodnfadosiufnowuf'),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.copy))
                ],
              ),
            ],
          ),
          ElevatedButton(onPressed: () {}, child: Text('Generar password')),
          OutlinedButton(onPressed: () {}, child: Text('Borrar passwords'))
        ],
      ),
    );
  }
}
