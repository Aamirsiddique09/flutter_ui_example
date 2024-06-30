import 'package:flutter/material.dart';

// Section 1: Key Concepts
class Section1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Section 1: Key Concepts', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        StatelessWidgetExample(),
        StatefulWidgetExample(),
      ],
    );
  }
}

// Example of a Stateless Widget
class StatelessWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text('I am a Stateless Widget'),
    );
  }
}

// Example of a Stateful Widget
class StatefulWidgetExample extends StatefulWidget {
  @override
  _StatefulWidgetExampleState createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $_counter'),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
