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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Home Page',
            style: TextStyle(fontSize: 30),
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
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ThreePage(),
                ),
              );
            },
            child: const Text('vamos pa la tercera page'),
          )
        ],
      )),
    );
  }
}
