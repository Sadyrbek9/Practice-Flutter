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
          body: Row(children: [
            Expanded(
              flex: 2,
              child: Image.network(
                  'https://img.freepik.com/free-photo/puppy-that-is-walking-snow_1340-37228.jpg'),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.yellow,
                child: const Text('1'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.red,
                child: const Text('2'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.blue,
                child: const Text('3'),
              ),
            )
          ]),
        ));
  }
}
