import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    //most Important
    var time = DateTime.now();


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("First Flutter App"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text('Current Date : ${DateFormat('jms').format(time)}', style: TextStyle(fontSize: 20),),
              Text('Current Date : ${DateFormat('yMMMd').format(time)}', style: TextStyle(fontSize: 20),),
              Text('Current Date : ${DateFormat('yMMM').format(time)}', style: TextStyle(fontSize: 20),),
              Text('Current : ${DateFormat('QQQ').format(time)}', style: TextStyle(fontSize: 20),),
              Text('Current : ${DateFormat('yMMMMEEEEd').format(time)}', style: TextStyle(fontSize: 20),),

              ElevatedButton(onPressed: (){
                setState(() {
                });
              }, child: Text("Current Time"))
            ],
          ),
        ),
      ),
    );
  }
}

//Must do-> 
//use new version in pubspec.yaml "intl: ^0.20.2"
// import 'package:intl/intl.dart'
