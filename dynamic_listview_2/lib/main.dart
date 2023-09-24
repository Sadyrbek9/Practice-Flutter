// ignore_for_file: public_member_api_docs, sort_constructors_first
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
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  const BodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}
//после создание абстрактного класса передали в List <String> - List <ListItem>
Widget _myListView() {
  final List<ListItem> items = List<ListItem>.generate(
    10000,
    (index) => index % 6 == 0
        ? HeadingItem('Heading $index')
        : MessageItem('Sender $index', 'Message body $index'),
  );
  // если остаток от деления 6 равно 0, выдай Heading Заголовок, иначе выдай MessageItem - обычный текст

  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
      final item = items [index]; //peremennyi tyzyp aldyk

    // emi tekwerebyz
if (item is HeadingItem){
  return ListTile(
    title: Text(item.heading, style: Theme.of(context).textTheme.headlineLarge),);
  
}else if (item is MessageItem){
  return ListTile(
    title: Text(item.sender),
    subtitle: Text(item.body),
    leading: const Icon(Icons.insert_photo, color: Colors.red,),
    trailing: const Icon(Icons.keyboard_arrow_right),
        );
}
return null;

      // по новому отображаем LitView, Card убрали
      // return Card(
      //   child: ListTile(
      //     title: Text('${items[index]}'),
      //     leading: const Icon(
      //       Icons.insert_photo,
      //       color: Colors.red,
      //     ),
      //     trailing: const Icon(Icons.keyboard_arrow_right),
      //   ),
      // );
    },
  ); //исполз. для отображения списка
}

abstract class ListItem{

}

class HeadingItem implements ListItem{
    HeadingItem(this.heading,
  );
    final String heading;
}
class MessageItem implements ListItem{
    MessageItem(
    this.sender, this.body
  );
  final String sender;
  final String body;
}
