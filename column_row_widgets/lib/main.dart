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
          body: Container(
            decoration: BoxDecoration(color: Colors.indigo[100]),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(Icons.adjust_outlined, size: 20,),
                Icon(Icons.adjust_outlined, size: 30,),
                Icon(Icons.adjust_outlined, size: 20,),
                Icon(Icons.adjust_outlined, size: 20,)
              ],
            ),
          )),
    );
  }
}
