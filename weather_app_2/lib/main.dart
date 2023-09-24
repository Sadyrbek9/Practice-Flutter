import 'package:flutter/material.dart';

void main() {
  runApp(const MyWeatherApp());
}

class MyWeatherApp extends StatelessWidget {
  const MyWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 177, 3, 43)),
        useMaterial3: true,
      ),
      home: const WeatherForecast(),
    );
  }
}

class WeatherForecast extends StatelessWidget {
  const WeatherForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 177, 3, 43),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 177, 3, 43),
          title: const Text(
            'WeatherForecast',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        body: _buildBodyWeather(),
      ),
    );
  }
}

Widget _buildBodyWeather() {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          _searchIcon(),
          const SizedBox(
            height: 30,
          ),
          _cityData(),
           const SizedBox(
            height: 40,
          ),
          _temperature(),
          const SizedBox(
            height: 40,
          ),
          _snowWidget(),
        ],
      ),
    ),
  );
}

Row _searchIcon() {
  return const Row(
    children: [
      Icon(
        Icons.search,
        size: 30,
        color: Colors.white,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        'Enter city name',
        style: TextStyle(color: Colors.white, fontSize: 20),
      )
    ],
  );
}

Column _cityData() {
  return const Column(
    children: [
      Text(
        'Hamburg, Germany',
        style: TextStyle(color: Colors.white, fontSize: 40),
      ),
      Text(
        'Friday, September 29, 2023',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ],
  );
}
Row _temperature(){
  return const Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.wb_sunny, color: Colors.white, size: 80,),
      SizedBox(width: 35,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('14 °F', style: TextStyle(color: Colors.white, fontSize: 40),),
          Text('LIGHT SNOW', style: TextStyle(color: Colors.white, fontSize: 20),),

        ],
      )
    ],
  );
}

Widget _snowWidget(){
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(Icons.ac_unit, color: Colors.white, size: 25),
          Text('5', style: TextStyle(color: Colors.white, fontSize: 20)),
          Text('km/hr', style: TextStyle(color: Colors.white, fontSize: 20)),
        ],
      ),
      Column(
        children: [
          Icon(Icons.ac_unit, color: Colors.white, size: 25),
          Text('3', style: TextStyle(color: Colors.white, fontSize: 20)),
          Text('%', style: TextStyle(color: Colors.white, fontSize: 20)),
        ],
      ),
      Column(
        children: [
          Icon(Icons.ac_unit, color: Colors.white, size: 25),
          Text('20', style: TextStyle(color: Colors.white, fontSize: 20)),
          Text('%', style: TextStyle(color: Colors.white, fontSize: 20)),
        ],
      ),
    ],
    

  );
}