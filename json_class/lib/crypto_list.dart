import 'package:flutter/material.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({super.key, required this.criptos});

  final List criptos;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network('${criptos[index]['image']}'),
            title: Text('${criptos[index]['name']}'),
            subtitle: Text(
                '${criptos[index]['country']}\n${criptos[index]['year_established']}'),
            trailing: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text('${criptos[index]['trust_score']}'),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: criptos.length);
  }
}
