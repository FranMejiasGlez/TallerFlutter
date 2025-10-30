import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba de Scaffold',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Columnas y filas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Columnas y filas")),
      body: Column(
        children: [
          const Row(
            children: [
              Column(
                children: [
                  Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
                ],
              ),
            ],
          ),
          const Row(
            children: [
              Column(
                children: [
                  Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
                ],
              ),
            ],
          ),
          const Row(
            children: [
              Column(
                children: [
                  Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
                ],
              ),
            ],
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
