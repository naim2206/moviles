import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tip_time_rec/provider/tiptime_provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
            leading: Icon(Icons.add_business_outlined),
            title: Padding(
              padding: EdgeInsets.only(right: 150),
              child: TextField(
                controller: context.watch<TipTimeProvider>().price,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Cost of service',
                ),
              ),
            )),
        const ListTile(
          leading: Icon(Icons.room_service),
          title: Text('How was the service?'),
        ),
        Column(
          children: [
            RadioListTile(
              value: 0,
              activeColor: Theme.of(context).colorScheme.primary,
              groupValue: context.watch<TipTimeProvider>().selectedRadio,
              onChanged: (val) {
                context.read<TipTimeProvider>().setSelectedRadio(val);
              },
              title: Text('Amazing (20%)'),
            ),
            RadioListTile(
              value: 1,
              activeColor: Theme.of(context).colorScheme.primary,
              groupValue: context.watch<TipTimeProvider>().selectedRadio,
              onChanged: (val) {
                context.read<TipTimeProvider>().setSelectedRadio(val);
              },
              title: Text('Good (18%)'),
            ),
            RadioListTile(
              value: 2,
              activeColor: Theme.of(context).colorScheme.primary,
              groupValue: context.watch<TipTimeProvider>().selectedRadio,
              onChanged: (val) {
                context.read<TipTimeProvider>().setSelectedRadio(val);
              },
              title: Text('Okay (15%)'),
            ),
          ],
        ),
        SwitchListTile(
          secondary: Icon(Icons.trending_up_sharp),
          title: Text("Round up tip"),
          value: context.watch<TipTimeProvider>().selected,
          onChanged: (newValue) {
            context.read<TipTimeProvider>().setSelected(newValue);
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {
                context.read<TipTimeProvider>().tipCalculation(
                    int.parse(context.read<TipTimeProvider>().price.text));
              },
              child: Text('CALCULATE')),
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Tip amount \$${context.read<TipTimeProvider>().tip_amount}',
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
