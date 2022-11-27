
import 'package:ciclo_sprint2/ui/controller/list_controller.dart';
import 'package:ciclo_sprint2/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  final getit = GetIt.instance;
  getit.registerSingleton<TodoController>(TodoController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ciclo Sprint2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
