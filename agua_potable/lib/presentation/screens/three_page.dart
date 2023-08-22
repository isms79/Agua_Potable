import 'package:flutter/material.dart';
import 'package:agua_potable/presentation/widgets/menu_appbar.dart';
import 'package:agua_potable/presentation/screens/home_page.dart';
import 'package:agua_potable/presentation/screens/second_page.dart';

class ThreePage extends StatelessWidget {
  const ThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Icon(Icons
                      .pageview), // Agrega el icono a la izquierda del título
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
      appBar: MenuAppbar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Selecciona una Ciudad',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CityPage(city: 'Medellin')));
              },
              child: const Text('Medellin'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CityPage(city: 'Bogotá')));
              },
              child: const Text('Bogotá'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CityPage(city: 'Cali')));
              },
              child: const Text('Cali'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CityPage(city: 'Barranquilla')));
              },
              child: const Text('Barranquilla'),
            ),
          ],
        ),
      ),
    );
  }
}

String getCityImagePath(String city) {
  switch (city) {
    case 'Medellin':
      return 'assets/img/Medellin.jpg';
    case 'Bogotá':
      return 'assets/img/Bogota.jpg';
    case 'Cali':
      return 'assets/img/Cali.jpg';
    case 'Barranquilla':
      return 'assets/img/Baranquilla.jpg';
    default:
      return '';
  }
}

class CityPage extends StatelessWidget {
  final String city;

  CityPage({required this.city});

  @override
  Widget build(BuildContext context) {
    String imagePath = getCityImagePath(city);
    String waterPointsInfo = '';

    if (city == 'Medellin') {
      waterPointsInfo = 'Puntos de agua cercanos en Medellin:\n\n'
          '1. Punto 1 - Aguas Nacionales Epm: Activo\n'
          '2. Punto 2 - Museo del Agua: Inactivo\n'
          '3. Punto 3 - Agua de la Peña: Activo\n';
    } else if (city == 'Bogotá') {
      waterPointsInfo = 'Puntos de agua cercanos en Bogotá:\n\n'
          '1. Punto A - Cade Servita: Activo\n'
          '2. Punto B - Supercade Suba: Inactivo\n';
    } else if (city == 'Cali') {
      waterPointsInfo = 'Puntos de agua cercanos en Cali:\n\n'
          '1. Punto X - Sede Emcali: Activo\n'
          '2. Punto Y - Emcali Estacion bomberos: Inactivo\n'
          '3. Punto Z - Sociedad de Acuedutos del valle: Activo\n';
    } else if (city == 'Barranquilla') {
      waterPointsInfo = 'Puntos de agua cercanos en Barranquilla:\n\n'
          '1. Punto M - Triple AS.A.E.S.P: Inactivo\n'
          '2. Punto N - Acueduto Triple SAS: Activo\n'
          '3. Punto O - La casa del Agua Purificada: Activo\n';
    }

    List<WaterPointInfo> waterPointsList = getWaterPoints(city);

    return Scaffold(
      appBar: AppBar(
        title: Text('Ubicación: $city'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ubicación: $city',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Estado: Activo ',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Nombre: Santiago',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            imagePath.isNotEmpty
                ? Image.asset(
                    imagePath,
                    width: 550,
                    height: 170,
                  )
                : SizedBox(),
            SizedBox(height: 20),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(child: Center(child: Text('Punto'))),
                    TableCell(child: Center(child: Text('Ubicación'))),
                    TableCell(child: Center(child: Text('Estado'))),
                  ],
                ),
                ...waterPointsList.map((waterPoint) {
                  return TableRow(
                    children: [
                      TableCell(child: Text(waterPoint.nombree)),
                      TableCell(child: Text(waterPoint.Ubicacion)),
                      TableCell(child: Text(waterPoint.estado)),
                    ],
                  );
                }).toList(),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                SizedBox(height: 10);
                Navigator.pop(context);
              },
              child: const Text('Volver a Seleccionar Ciudad'),
            ),
          ],
        ),
      ),
    );
  }
}

class WaterPointInfo {
  final String nombree;
  final String Ubicacion;
  final String estado;

  WaterPointInfo(
      {required this.nombree, required this.Ubicacion, required this.estado});
}

List<WaterPointInfo> getWaterPoints(String city) {
  if (city == 'Medellin') {
    return [
      WaterPointInfo(
          nombree: '  Punto 1',
          Ubicacion: ' Aguas Nacionales ',
          estado: 'Activo'),
      WaterPointInfo(
          nombree: '  Punto 2',
          Ubicacion: ' Museo del Agua ',
          estado: 'Inactivo'),
      WaterPointInfo(
          nombree: '  Punto 3',
          Ubicacion: ' Agua de la Peña ',
          estado: 'Activo'),
    ];
  } else if (city == 'Bogotá') {
    return [
      WaterPointInfo(
          nombree: 'Punto 1', Ubicacion: ' Cade Servita ', estado: 'Activo'),
      WaterPointInfo(
          nombree: 'Punto 2', Ubicacion: ' Supercade Sub ', estado: 'Inactivo'),
    ];
  } else if (city == 'Cali') {
    return [
      WaterPointInfo(
          nombree: 'Punto 1', Ubicacion: 'Sede Emcali ', estado: 'Activo'),
      WaterPointInfo(
          nombree: 'Punto 2',
          Ubicacion: 'Emcali bomberos ',
          estado: 'Inactivo'),
      WaterPointInfo(
          nombree: 'Punto 3',
          Ubicacion: 'Acuedutos del valle ',
          estado: 'Activo'),
    ];
  } else if (city == 'Barranquilla') {
    return [
      WaterPointInfo(
          nombree: 'Punto 1',
          Ubicacion: ' La casa del Agua ',
          estado: 'Activo'),
      WaterPointInfo(
          nombree: 'Punto 2',
          Ubicacion: ' Triple AS.A.E.S.P ',
          estado: 'Inactivo'),
    ];
  } else {
    return [];
  }
}
