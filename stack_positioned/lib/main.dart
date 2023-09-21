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
          body: const Stack(
            children: [
              Icon(
                Icons.airplay,
                color: Colors.red,
                size: 200,
              ),
              Positioned(
                top: 45,
                left: 40,
                child: Text(
                  'TV',
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ),
              ),
            ],
          ),
        ));
  }
}
