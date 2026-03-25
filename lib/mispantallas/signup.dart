import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, iconTheme: const IconThemeData(color: Colors.purple)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Únete a nosotros", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple)),
            const Text("Es gratis y recibirás ofertas florales", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 30),
            _buildInput("Nombre Completo"),
            _buildInput("Email"),
            _buildInput("Contraseña", isPass: true),
            _buildInput("Confirmar Contraseña", isPass: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.purple[300],
                foregroundColor: Colors.white,
              ),
              child: const Text("Registrarme"),
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("¿Ya eres parte? "),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/login'),
                    child: const Text("Inicia Sesión", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
             Image.network(
                'https://raw.githubusercontent.com/KevinCardiel1/imagenes-para-flutter-6I-11-FEB-2026/refs/heads/main/girasol.png',
                height: 150,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildInput(String label, {bool isPass = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: TextField(
        obscureText: isPass,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.purple),
          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.pinkAccent)),
          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple, width: 2)),
        ),
      ),
    );
  }
}