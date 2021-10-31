import 'package:flutter/material.dart';

class DescriptionCard extends StatelessWidget {
  final String? description;
  const DescriptionCard({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    final bool isVertical = orientation == Orientation.portrait;

    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      height: 80,
      width: isVertical ? 300 : 200,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Text(
              '$description',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
