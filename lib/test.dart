import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/providers/counter.dart';

void main() => runApp(const Test());

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    int count = context.watch<Counter>().counterValue;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Count: $count'),
                FloatingActionButton(
                  onPressed: () {
                    context.read<Counter>().increment();
                  },
                  child: const Text("+"),
                ),
                FloatingActionButton(
                  onPressed: () {
                    context.read<Counter>().decrement();
                  },
                  child: const Text("-"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
