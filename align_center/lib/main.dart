import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: const Text('Building Layouts'),
        ),
        body: const Align(
          alignment: Alignment(0.3, 0.3),
           child: Text(
            'Padding for practice',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )
      
        ),
      
    );
  }
}
