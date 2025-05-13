import 'package:flutter/material.dart';

//! builder

class Widget030 extends StatelessWidget {
  const Widget030({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Colors.grey[200], // Fondo claro
      body: Center(
        child: Builder(
          builder: (BuildContext context) {
            return Text(
              'Text with Theme',
              style: Theme.of(context).textTheme.displayLarge,
              textAlign: TextAlign.center,
            );
          },
        ),
      ),
    );
  }
}
