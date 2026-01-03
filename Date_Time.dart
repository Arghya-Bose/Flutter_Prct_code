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
          height: 200,
          width: 300,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current time : $time', style: TextStyle(fontSize: 10),),
              Text('Current weekday : ${time.weekday}', style: TextStyle(fontSize: 10),),
              Text('Current day : ${time.day}', style: TextStyle(fontSize: 10),),
              Text('Current month : ${time.month}', style: TextStyle(fontSize: 10),),
              Text('Current year : ${time.year}', style: TextStyle(fontSize: 10),),
              Text('Current hour : ${time.hour}', style: TextStyle(fontSize: 10),),
              Text('Current minute: ${time.minute}', style: TextStyle(fontSize: 10),),
              Text('Current second: ${time.second}', style: TextStyle(fontSize: 10),),
              Text('Current microsecond : ${time.microsecond}', style: TextStyle(fontSize: 10),),
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
