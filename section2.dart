import 'package:flutter/material.dart';

// Section 2: Design and Implement User Interfaces with a Variety of Widgets
class Section2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Section 2: Design and Implement User Interfaces with a Variety of Widgets', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text('Container Widget'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Row 1'),
            Text('Row 2'),
          ],
        ),
        Column(
          children: [
            Text('Column 1'),
            Text('Column 2'),
          ],
        ),
        Stack(
          children: [
            Container(color: Colors.red, width: 100, height: 100),
            Positioned(
              top: 20,
              left: 20,
              child: Container(color: Colors.blue, width: 50, height: 50),
            ),
          ],
        ),
        ListView(
          shrinkWrap: true,
          children: [
            ListTile(title: Text('Item 1')),
            ListTile(title: Text('Item 2')),
          ],
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          children: List.generate(4, (index) {
            return Center(
              child: Text('Item $index'),
            );
          }),
        ),
      ],
    );
  }
}
