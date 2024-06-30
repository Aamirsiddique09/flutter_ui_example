import 'package:flutter/material.dart';

// Section 3: Focus on Creating Responsive and Visually Appealing Layouts
class Section3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Section 3: Responsive Layouts', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Builder(
          builder: (context) {
            double width = MediaQuery.of(context).size.width;
            return Container(
              width: width * 0.8,
              child: Text('Responsive Container'),
            );
          },
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return Text('Large Screen');
            } else {
              return Text('Small Screen');
            }
          },
        ),
        Row(
          children: [
            Expanded(child: Text('Flexible 1')),
            Flexible(child: Text('Flexible 2')),
          ],
        ),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(color: Colors.blue),
        ),
        FittedBox(
          child: Text('Fitted Box'),
        ),
        SafeArea(
          child: Text('Safe Area Widget'),
        ),
      ],
    );
  }
}
