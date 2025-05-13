import 'package:flutter/material.dart';

// Importaciones de widgets: 10, 20, 30, 40, 50, 60
import 'package:act7/w10.dart';
import 'package:act7/w20.dart';
import 'package:act7/w30.dart';
import 'package:act7/w40.dart';
import 'package:act7/w50.dart';
import 'package:act7/w60.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pantallas 10 a 60',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const PaginaPrincipal(),
      routes: {
        '/p10': (context) => const Widget010(),
        '/p20': (context) => const Widget020(),
        '/p30': (context) => const Widget030(),
        '/p40': (context) => const Widget040(),
        '/p50': (context) => const Widget050(),
        '/p60': (context) => const Widget060(),
      },
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista fija con los números deseados
    final pantallas = [10, 20, 30, 40, 50, 60];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Principal'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pantallas.map((numPantalla) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/p$numPantalla'),
                  child: Text('Ir a Widget$numPantalla'),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
