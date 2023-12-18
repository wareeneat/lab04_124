import 'package:flutter/material.dart';
import 'package:lab04_124/pages/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '642021124',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,background: Colors.blue),
        useMaterial3: true,
      ),
      home: const FirstPage(),
    );
  }
}



