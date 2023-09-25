import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_class/crypto_list.dart';
import 'package:json_class/data/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> criptos = [];

  @override
  void initState() {
    criptos = jsonDecode(CRYPTO_EXCHANGES);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto app'),
      ),
      body: CryptoList(criptos: criptos),
    );
  }
}
