import 'package:flutter/material.dart';
import 'package:provider_counter/Screens/multiplica.dart';
import 'package:provider_counter/Screens/prime.dart';
import 'package:provider_counter/Screens/suma_resta.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;

  final List<Widget> _pages = [
    const SumaResta(),
    const Multiplica(),
    const Prime()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador 2.0'),
      ),
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Sum'),
          BottomNavigationBarItem(icon: Icon(Icons.close), label: 'Multiplica'),
          BottomNavigationBarItem(icon: Icon(Icons.numbers), label: 'Prime')
        ],
      ),
    );
  }
}
