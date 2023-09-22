import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          iconTheme: const IconThemeData(
            color: Colors.black54,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Weather APP',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _weatherDescription(),
                const SizedBox(
                  height: 20,
                ),
                _temperature(),
                const SizedBox(
                  height: 20,
                ),
                _temperatureForecast(),
                const SizedBox(
                  height: 20,
                ),
                _footerReitings(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return const Image(
    image: NetworkImage(
        'https://images.pexels.com/photos/186980/pexels-photo-186980.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "Tuesday September 23",
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        'Our country is in the temperate climatic zone. Average temperature is 12-13 degrees above zero (Celsius) here.The weather is the thing we always talk about.',
        style: TextStyle(color: Colors.black54),
      )
    ],
  );
}

Row _temperature() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
          )
        ],
      ),
      SizedBox(
        width: 29,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '15° Clear',
                style: TextStyle(color: Colors.deepPurple),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Hamburg, Germany',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    children: List.generate(
      7,
      (index) => Chip(
        label: Text(
          '${index + 20}°C',
          style: const TextStyle(fontSize: 15),
        ),
        avatar: Icon(
          Icons.wb_cloudy,
          color: Colors.blue.shade300,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
          side: const BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      ),
    ),
  );
}

Row _footerReitings() {
  var stars = const Row( mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.black,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.black,
      ),
    ],
  );
  return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Text(
        'Info with openweather.org',
        style: TextStyle(fontSize: 18),
      ),
      stars,
    ],
  );
}
