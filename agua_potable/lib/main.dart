import 'package:flutter/material.dart';
import 'package:agua_potable/presentation/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.tealAccent[700]
    ),
  );
}
}