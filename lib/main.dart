import 'package:flutter/material.dart';

import 'examples/example_com_button.dart';
import 'examples/example_com_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theming Example',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Color principal
        brightness: Brightness.light, // Tema claro
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Tema oscuro
        primarySwatch: Colors.blueGrey,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
        actions: [
          IconButton(
            onPressed: () {
              //  _themeMode.value =
              //  _themeMode.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
            },
            icon: const Icon(Icons.dark_mode_outlined),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const ExampleComInput(),
                  ),
                );
              },
              child: const Text('Input'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const ExampleComButton(),
                  ),
                );
              },
              child: const Text('Dropdowm'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const ExampleComButton(),
                  ),
                );
              },
              child: const Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}
