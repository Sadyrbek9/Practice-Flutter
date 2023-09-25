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

class WeatherForecast extends StatefulWidget {
  const WeatherForecast({super.key});

  @override
  State<WeatherForecast> createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
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
          const SizedBox(
            height: 40,
          ),
          _temperatureWeekForecast(),
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

Row _temperature() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.wb_sunny,
        color: Colors.white,
        size: 80,
      ),
      SizedBox(
        width: 35,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '14 °F',
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          Text(
            'LIGHT SNOW',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      )
    ],
  );
}

Widget _snowWidget() {
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

Widget _temperatureWeekForecast() {
  var day1 = const Row(
    children: [
      Text('Friday', style: TextStyle(color: Colors.white, fontSize: 15),),
      Row(children: [
        Text('6 °F', style: TextStyle(color: Colors.white),),
        Icon(Icons.wb_sunny, color: Colors.white,)
      ],),
    ],
  );
  var day2 = const Row(
    children: [
      Text('Friday', style: TextStyle(color: Colors.white, fontSize: 15),),
      Row(children: [
        Text('6 °F', style: TextStyle(color: Colors.white),),
        Icon(Icons.wb_sunny, color: Colors.white,)
      ],),
    ],
  );
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.all(12),
      child: Row(children: [
        day1,
        const SizedBox(width: 12,),
        day2,
      ],
        
      ),
    );
  
}
// Widget _temperatureWeekForecast() {
//   return SizedBox(
//     height: 210,
//     child: ListView.separated(
//       scrollDirection: Axis.horizontal,
//       padding: const EdgeInsets.all(12.0),
//       itemCount: 7,
//       separatorBuilder: (BuildContext context, int index) {
//         return const SizedBox(
//           width: 8,
//         );
//       },
//       itemBuilder: (context, int index) {
//         return weatherCard(index);
//       },
//     ),
//   );
// }

// Widget weatherCard(int index) {
//   return const Column(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       ListTile(
//                 title: Text(
//                   'Friday',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 subtitle: Text('6 °F'),
//                 trailing: Icon(Icons.wb_sunny),
//               ),
//               ListTile(
//                 title: Text(
//                   'Saturday',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 subtitle: Text('5 °F'),
//                 trailing: Icon(Icons.wb_sunny),
//               ),
//               ListTile(
//                 title: Text(
//                   'Sunday',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 subtitle: Text('8 °F'),
//                 trailing: Icon(Icons.wb_sunny),
//               ),
//               ListTile(
//                 title: Text(
//                   'Monday',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 subtitle: Text('7 °F'),
//                 trailing: Icon(Icons.wb_sunny),
//               ),
//               ListTile(
//                 title: Text(
//                   'Tuesday',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 subtitle: Text('6 °F'),
//                 trailing: Icon(Icons.wb_sunny),
//               ),
//               ListTile(
//                 title: Text(
//                   'Wednesday',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 subtitle: Text('5 °F'),
//                 trailing: Icon(Icons.wb_sunny),
//               ),
//               ListTile(
//                 title: Text(
//                   'Thursday',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 subtitle: Text('5 °F'),
//                 trailing: Icon(Icons.wb_sunny),
//               ),
//     ],
//   );
// }

