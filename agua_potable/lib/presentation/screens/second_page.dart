import 'package:flutter/material.dart';
import 'package:agua_potable/presentation/widgets/menu_appbar.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('ir pa atrás, llavecita'),
              ),
            ],
          )
        ]),
      ),
      appBar: MenuAppbar(),
      body: Center(
        child: Column(children: [
          const Text(
            'Second page',
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('ir pa atrás'),
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
