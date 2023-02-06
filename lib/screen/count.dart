import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/providers.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    final countProvider = Provider.of<CountProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Count'),
      ),
      body: Column(
        children: [
          Center(
            child: Consumer<CountProvider>(
              builder: (context, value, child) {
                return Text(
                  countProvider.count.toString(),
                  style: TextStyle(fontSize: 50),
                );
              },
            ),
          ),
          TextButton(
              onPressed: () {
                countProvider.setCount();
              },
              child: Icon(Icons.add)),
          TextButton(
              onPressed: () {
                countProvider.setsub();
              },
              child: Icon(Icons.minimize)),
        ],
      ),
    );
  }
}
