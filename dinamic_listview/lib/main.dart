import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ListView',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
            title: const Text('Building ListView'),
          ),
          body: const BodyListView(),
        ),);
  }
}

class BodyListView extends StatelessWidget {
  const BodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}
Widget _myListView(){
    final List<String> items = List<String>.generate(10000, (index) => 'Item $index');
     // принял два Параметра:длина списка и генератор, кот. принимает int (index) => возвратил $index


    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('${items[index]}'),
            leading: const Icon(Icons.insert_photo, color: Colors.red,),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
        );
      },

    ); //исполз. для отображения списка
     

}