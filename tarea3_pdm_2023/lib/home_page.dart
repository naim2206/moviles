import 'package:flutter/material.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final List<String> items = [
    'Cancun',
    'Riviera Maya',
    'Puerto Vallarta',
    'Acapulco',
    'Playa Mazunte',
    'Marietas',
    'Playa Mosquito',
    'Playa del Carmen',
    'Tulum',
    'Isla Mujeres'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: FractionallySizedBox(
                      widthFactor: 1.0, // Ocupa todo el ancho disponible
                      heightFactor: 0.25, // Altura del 25% de la pantalla
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/my_image.jpg',
                            fit: BoxFit.cover),
                      ))),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemActividad(
                              number: index + 1, name: items[index]);
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        final snackBar =
                            SnackBar(content: Text('Reservacion en progreso'));
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Text("Start booking"),
                      color: Colors.red,
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
