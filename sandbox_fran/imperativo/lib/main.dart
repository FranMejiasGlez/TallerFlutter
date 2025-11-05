import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() => runApp(MiAplicacion());

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo de Navegación',
      home: PantallaPrincipal(),
    );
  }
}

// --- Pantalla Principal ---
class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pantalla Principal')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            fit: BoxFit.cover, // This will cover the entire container
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        "Bienvenido a Migaz. Preparado para cocinar?",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 80),
                    child: Center(
                      child: Text(
                        "Iniciar Sesion",
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                  Container(
                    width: 500,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("E-mail", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    color: Colors.grey,
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Container(
                    width: 500,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Contrasenia", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// --- Segunda Pantalla ---
class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Segunda Pantalla')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Volver a la Principal'),
        ),
      ),
    );
  }
}
