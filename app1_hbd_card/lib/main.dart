import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp()); //Le decimos a flutter que en el main queremos que corra la aplicación con la clase "My App"
}

class MyApp extends StatelessWidget {
  //Definimos la clase MyApp de un StatelessWidget (No se mueve)
  const MyApp(
      {super.key}); //Pasamos los parametros como cualquier clase (Esto lo aprendieron en POO)

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Creamos el contexto de nuestra clase
    return MaterialApp(
      //La clase debe retornar algo! En este caso un Widget de tipo MaterialApp
      title:
          'Widgets Mas utilizados', //Un atributo de MaterialApp es el titulo de tu app
      theme: ThemeData(
        //Otro atributo es theme, nos ayuda a darle color y personalización de estilo a tu app que puedes utilizar en cualquier lugar
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(
                255, 109, 197, 219)), //Color principal de mi app
        useMaterial3: true, // Utilizamos Material Design
      ),
      home:
          const BirthdayCard(), //Otro atributo de Material App, es la pantalla home , en este caso le paso otra clase, la clase "BirthdayCard"
    );
  }
}

class MyHomePage extends StatelessWidget {
  //Definimos la clase MyHomePage de un StatelessWidget (No se mueve
  const MyHomePage(
      {super.key}); //Pasamos los parametros como cualquier clase (Esto lo aprendieron en POO)

  @override
  Widget build(BuildContext context) {
    //Creamos el contexto de nuestra clase
    return Scaffold(
      //En este caso retornamos un Widget tipo Scaffold, es la pantalla con su appBar
      appBar: AppBar(
        //Tiene justamente de atributo un App Bar
        backgroundColor: const Color.fromARGB(255, 81, 255,
            235), //Le damos color, aunque también podría tomarlo del contexto
        title:
            const Text('Widgets mas utilizados'), //Otro atributo es el título
      ),
      body: const Row(
        //Body es lo que esta dentro de mi app principal en este caso un Row
        mainAxisAlignment: MainAxisAlignment
            .center, //Alineamos lo que esta dentro de mi Row a centrado
        children: [
          //Declaramos los "hijos" de mi Row
          Column(
            //El primer hijo es una columna
            children: [
              //Que tiene "hijos al igual que la Row"
              Icon(Icons.thumb_up), //Añadimos un Icono
              Text('507') //Añadimos un texto simple
            ],
          ),
          SizedBox(
            //El segundo hijo de nuestro Row que es un simple separador
            width:
                100, //Un atributo de SizedBox es el tamaño en este caso 100px
          ),
          Column(
              //El tercer hijo de nuestro Row es una columna Y se repite lo de arriba
              children: [Icon(Icons.thumb_down), Text('507')]),
        ],
      ),
    );
  }
}

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    //Definimos la clase BirthdayCard de un StatelessWidget (No se mueve)
    return Scaffold(
        //Al igual que arriba lo ponemos en un Scaffold para que tengamos App Bar
        appBar: AppBar(
          centerTitle:
              false, //Le decimos que no este centrado ya que el default en iOS es centrado
          backgroundColor: const Color.fromARGB(255, 110, 158,
              225), //Damos color de fondo aunque podríamos tomarlo del contexto de la app

          title: const Text(
            'Birthday Card',
            style: TextStyle(color: Colors.white),
          ), //El título ahora no es un simple texto, añadimos estilo, color
        ),
        body: Column(
          //El cuerpo de nuestro Scaffold va a ser una columna
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, //Los elementos dentro de nuestra columna van a estar espaciados adecuadamente
          children: [
            //Vamos a añadir los hijos de mi columna
            Container(
              //El primer hijo es un Container, por qué? Los Container se pueden alinear a mi gustó es uno de sus atributos
              alignment:
                  Alignment.topLeft, //Alineo mi container arriba a la izquierda
              child: const Text(
                'Happy Birthday Chuchuy', //Uso child por que son hijos del container, y solo quiero 1, el texto
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ), //Le ponemos estilo al texto, tamaño y tipo de letra, estos son atributos de texto
            ),
            //El segundo hijo de mi Column va a ser una imagen, con Image.network puedo traer directamente con una dirección
            Image.network(
                'https://wishes.moonzori.com/wp-content/uploads/2023/04/Happy-Birthday-Birthday-Wishes-and-Images-Moonzori.png'),
            Container(
              //El tercer y último hijo de mi Column, es otro container para poder alinear a mi gusto el texto
              alignment: Alignment.bottomRight, //lo alineo abajo a la derecha
              padding: const EdgeInsets.only(
                  right:
                      40), //Le doy un padding para que no salga de mi pantalla
              child: const Text(
                'From Naim', //Añado el texto
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ), //Le pongo estilo al texto
            )
          ],
        ));
  }
}
