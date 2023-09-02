import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var likes = 999;
  var colorCorreo = Colors.black;
  var colorLlamada = Colors.black;
  var colorRuta = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Iteso'),
      ),
      body: Column(
        children: [
          Image.network(
              "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
          ListTile(
            title: const Text(
              "El ITESO, Universidad Jesuita de Guadalajara",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              "San Pedro Tlaquepaque, Jal",
              style: TextStyle(fontWeight: FontWeight.w200),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      likes++;
                    });
                  },
                  icon: const Icon(Icons.thumb_up),
                  color: Colors.indigo,
                ),
                Text(likes.toString())
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    color: colorCorreo,
                    iconSize: 48,
                    onPressed: () {
                      setState(() {
                        colorCorreo == Colors.black
                            ? colorCorreo = Colors.indigo
                            : colorCorreo = Colors.black;
                      });
                      var snackBar = const SnackBar(
                        content:
                            Text("Puedes encontrar comida en sus cafeterías"),
                        duration: Duration(
                            seconds: 3), // Duration the Snackbar is visible
                      );
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    icon: const Icon(Icons.mail),
                  ),
                  const Text("Correo"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    color: colorLlamada,
                    iconSize: 48,
                    onPressed: () {
                      setState(() {
                        colorLlamada == Colors.black
                            ? colorLlamada = Colors.indigo
                            : colorLlamada = Colors.black;
                      });
                      var snackBar = const SnackBar(
                        content: Text("Puedes pedir información en rectoría"),
                        duration: Duration(
                            seconds: 3), // Duration the Snackbar is visible
                      );
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    icon: const Icon(Icons.phone),
                  ),
                  const Text("Llamada"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    color: colorRuta,
                    iconSize: 48,
                    onPressed: () {
                      setState(() {
                        colorRuta == Colors.black
                            ? colorRuta = Colors.indigo
                            : colorRuta = Colors.black;
                      });
                      var snackBar = const SnackBar(
                        content:
                            Text("Se encuentra ubicado en Periférico Sur 8585"),
                        duration: Duration(
                            seconds: 3), // Duration the Snackbar is visible
                      );
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    icon: const Icon(Icons.directions),
                  ),
                  const Text("Ruta"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              '''El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara''',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
