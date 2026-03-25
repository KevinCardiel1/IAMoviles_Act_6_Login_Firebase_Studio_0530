import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          child: Column(
            children: [
              const Text("¡Hola de nuevo!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple)),
              const Text("Entra a tu cuenta de Florería Ajolote", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Email", 
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
                )
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password", 
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
                )
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.pink[200], // Rosa Pastel
                  foregroundColor: Colors.white,
                ),
                child: const Text("Entrar"),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("¿Nuevo por aquí? "),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/signup'),
                    child: const Text("Crea una cuenta", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Image.network(
                'https://raw.githubusercontent.com/KevinCardiel1/imagenes-para-flutter-6I-11-FEB-2026/refs/heads/main/flores-acapulco.jpg',
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}