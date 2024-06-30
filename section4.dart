import 'package:flutter/material.dart';

// Section 4: Visual Appeal Tips
class Section4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Section 4: Visual Appeal', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Theme(
          data: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  Text('Custom Theme'),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Themed Button'),
                  ),
                ],
              );
            },
          ),
        ),
        Text(
          'Custom Font',
          style: TextStyle(fontFamily: 'CustomFont'),
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Padded Text'),
        ),
        Container(
          margin: EdgeInsets.all(16.0),
          child: Text('Text with Margin'),
        ),
      ],
    );
  }
}
