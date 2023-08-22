import 'package:flutter/material.dart';
import 'package:agua_potable/presentation/widgets/menu_appbar.dart';
import 'package:agua_potable/presentation/screens/home_page.dart';
import 'package:agua_potable/presentation/screens/three_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key});

  @override
  Widget build(BuildContext context) {
    List personas = [
      {
        'nombre': "Barranquilla",
        'descripcion':
            "En las plantas de la empresa de acueducto, alcantarillado y aseo."
      },
      {
        'nombre': "Bogotá",
        'descripcion':
            "El agua que consumen los habitantes de Bogotá proviene.",
      },
      {
        'nombre': "Medellín",
        'descripcion':
            "El río Aburrá-Medellín es su proveedor de agua. El manejo.",
      },
      {
        ' ': "",
        '': "",
      },
    ];
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            '\nPuntos de agua potable',
            style: TextStyle(fontSize: 28),
          ),
          Padding(
            padding: EdgeInsets.all(18),
            child: Text(
              'El acceso al agua potable y saneamiento en Colombia y la calidad de estos servicios ha aumentado significativamente durante la última década.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
          DataTable(
            columns: [
              DataColumn(label: Text('Lugar')),
              DataColumn(label: Text('Descripción')),
            ],
            rows: personas.map((persona) {
              return DataRow(cells: [
                DataCell(Text(persona['nombre'] ?? '')),
                DataCell(Text(persona['descripcion'] ?? '')),
              ]);
            }).toList(),
          ),
          Container(
            color: Colors.grey[800],
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Más información:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Mizu no Hydra S.A. E.S.P. es una empresa pública dedicada al suministro de agua potable, recolección y tratamiento de aguas servidas.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
