import 'package:flutter/material.dart';
import 'database/database.dart';

void main() {
  final database = AppDatabase();

  runApp(MyApp(database: database));
}

class MyApp extends StatelessWidget {
  final AppDatabase database;

  const MyApp({
    super.key,
    required this.database,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Vistoria Laudo Creator'),
        ),
        body: const Center(
          child: Text('Banco iniciado com sucesso!'),
        ),
      ),
    );
  }
}