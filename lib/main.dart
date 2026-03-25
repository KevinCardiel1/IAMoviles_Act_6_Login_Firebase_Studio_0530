import 'package:flutter/material.dart';
import 'mispantallas/bienvenidos.dart';
import 'mispantallas/login.dart';
import 'mispantallas/signup.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Florería Ajolote',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          primary: Colors.purple[300]!, // Morado suave
          secondary: Colors.pink[200]!, // Rosa pastel
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Bienvenidos(),
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
      },
    );
  }
}