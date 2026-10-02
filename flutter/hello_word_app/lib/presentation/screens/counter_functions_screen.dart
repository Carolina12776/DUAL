import 'package:flutter/material.dart';


class CounterFunctionsScreen extends StatefulWidget {



  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterScreenState();
}
class _CounterScreenState extends State<CounterFunctionsScreen> {

int clickCounter = 0;


  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Counter functions'),
        leading: IconButton(
        icon: Icon(Icons.refresh_rounded),
        onPressed: () {

        },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
            style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text('click${clickCounter==1 ? '' : 's'}',style: TextStyle(fontSize: 25 )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        setState(() {
          clickCounter++;
        });
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}