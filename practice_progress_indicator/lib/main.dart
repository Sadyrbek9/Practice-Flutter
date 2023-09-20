import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late bool _loading;
  late double _progressValue;
  static const oneSec = Duration(seconds: 1);
  @override
  void initState() {
    _loading = false;
    _progressValue = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(125, 202, 159, 4),
          title: const Text('MyWidget'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinearProgressIndicator(
                        value: _progressValue,
                      ),
                      Text(
                        '${(_progressValue * 100).round()}%',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                : const Text(
                    'Press button to download',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgress();
            });
          },
          child: const Icon(Icons.cloud_download),
        ),
      ),
    );
  }

  void _updateProgress() {
     _progressValue = 0.0;
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.2;
        if (_progressValue >= 1.0) {
          _loading = false;
          t.cancel();
         
        }
      });
    });
  }
}
