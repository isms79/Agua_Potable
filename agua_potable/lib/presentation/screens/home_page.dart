import 'package:flutter/material.dart';
import 'package:agua_potable/presentation/screens/second_page.dart';
import 'package:agua_potable/presentation/screens/three_page.dart';
import 'package:agua_potable/presentation/widgets/menu_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuAppbar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 150,
              color: Colors.lightBlueAccent.shade700,
              child: Center(
                child: Text(
                  'Menú',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.home), // Agrega el icono a la izquierda del título
                  SizedBox(
                      width: 10), // Agrega un espacio entre el icono y el texto
                  Text(
                    'Home page',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.pageview), // Agrega el icono a la izquierda del título
                  SizedBox(
                      width: 10), // Agrega un espacio entre el icono y el texto
                  Text(
                    'Página 2',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                      Icons.pages), // Agrega el icono a la izquierda del título
                  SizedBox(
                      width: 10), // Agrega un espacio entre el icono y el texto
                  Text(
                    'Página 3',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThreePage(),
                  ),
                );
              },
            ),
            // Puedes agregar más opciones de menú si es necesario
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/img/Naturaliza-importancia-agua-potable.jpg',
                    width: 340,
                  ),
                ],
              ),
              Container(
                width: 340,
                height: 480,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Nuestra aplicación te ayuda a proteger el agua: aprende prácticas responsables, ahorra y contribuye a su preservación.',
                      style: TextStyle(fontSize: 25),
                    ),
                    const Text(
                      "“El agua es la fuerza motriz de toda la naturaleza” . \nLeonardo Da Vinci",
                      style: TextStyle(fontSize: 25, fontFamily: 'Nunito'),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ),
                  );
                },
                child: const Text('Go to second page'),
              ),
              Container(
                color:
                    Colors.grey[800], // Cambia el color al gris oscuro deseado
                padding:
                    EdgeInsets.all(20), // Espaciado interno en todos los lados
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // Alineación del texto a la izquierda
                  children: [
                    Text(
                      'Más información:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10), // Espacio vertical entre los textos
                    Text(
                      'Mizu no Hydra S.A. E.S.P. es una empresa pública dedicada al suministro de agua potable, recolección y tratamiento de aguas servidas.',
                      style: TextStyle(
                        fontSize: 16,
                        color:
                            Colors.white, // Cambia el color del texto a blanco
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
