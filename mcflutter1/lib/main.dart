import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mc Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade600),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mc Flutter'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Align(alignment: Alignment.centerLeft, child: Text(title)),
        ),
        body: SizedBox(
          height: 180,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_pin, size: 48),
                      Column(
                        children: [
                          Text('Flutter McFlutter',
                              style: TextStyle(fontSize: 24)),
                          Text('Experienced App Developer')
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('123 Main Street'),
                        Text('(415) 555-0198')
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ColorChangingIcon(
                          icon: Icons.accessibility, iconName: "Accessibility"),
                      ColorChangingIcon(
                        icon: Icons.timer,
                        iconName: "Timer",
                      ),
                      ColorChangingIcon(
                        icon: Icons.phone_android,
                        iconName: "Phone Android",
                      ),
                      ColorChangingIcon(
                        icon: Icons.phone_iphone,
                        iconName: "Phone iPhone",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class ColorChangingIcon extends StatefulWidget {
  final IconData icon;
  final String iconName;

  const ColorChangingIcon(
      {super.key, required this.icon, required this.iconName});

  @override
  _ColorChangingIconState createState() => _ColorChangingIconState();
}

class _ColorChangingIconState extends State<ColorChangingIcon> {
  Color iconColor = Colors.black;

  void _onTap() {
    setState(() {
      if (iconColor == Colors.black) {
        iconColor = Colors.indigo;
      } else {
        iconColor = Colors.black;
      }
      var snackBar = SnackBar(
        content: Text(widget.iconName),
        duration:
            const Duration(seconds: 3), // Duration the Snackbar is visible
      );
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Icon(
        widget.icon,
        color: iconColor,
        size: 30,
      ),
    );
  }
}
