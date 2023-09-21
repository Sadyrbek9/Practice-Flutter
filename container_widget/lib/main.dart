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
          body: Center(
            child: Container(
              alignment: Alignment.center,
              height: 200,
              width: 300,
              padding: const EdgeInsets.all(50),
              margin: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: const Color.fromARGB(255, 126, 214, 25)),
              child: const Text(
                'Padding for practice',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          )),
    );
  }
}
