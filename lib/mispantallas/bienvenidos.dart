
import 'package:flutter/material.dart';

class Bienvenidos extends StatelessWidget {
  const Bienvenidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F5), // Fondo rosa lavanda muy tenue
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                'https://raw.githubusercontent.com/KevinCardiel1/imagenes-para-flutter-6I-11-FEB-2026/main/ajolotelogo.png',
                height: 150,
              ),
              const Text(
                "Florería Ajolote",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                )
              ),
              const Text(
                "Flores frescas y detalles con alma",
                style: TextStyle(fontSize: 18, color: Colors.purpleAccent),
                textAlign: TextAlign.center,
              ),
              Image.network(
                'https://raw.githubusercontent.com/KevinCardiel1/imagenes-para-flutter-6I-11-FEB-2026/refs/heads/main/flor4ajolote.png',
                height: 250,
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/login'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.purple[300],
                  foregroundColor: Colors.white,
                ),
                child: const Text("INICIAR SESIÓN"),
              ),
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/signup'),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  side: const BorderSide(color: Colors.pinkAccent),
                  foregroundColor: Colors.pinkAccent,
                ),
                child: const Text("REGISTRARSE"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
