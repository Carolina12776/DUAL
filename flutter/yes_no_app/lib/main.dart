import 'package:flutter/material.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YES NO App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('YES NO App'),
        ),
        body:   Center(
          child: FilledButton.tonal(
            onPressed: (){},
             child: const Text('click me'),
        ),
      )
      ),
    );
  }
}
