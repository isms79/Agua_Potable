import 'package:flutter/material.dart';
import 'package:agua_potable/presentation/widgets/menu_appbar.dart';

class ThreePage extends StatelessWidget {
  const ThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: MenuAppbar(),
      body: Center(
        child: Column(children: [
          const Text(
            'Threeth page',
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('ir pa atrás, llavecita'),
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios))
        ]),
      ),
    );
  }
}
