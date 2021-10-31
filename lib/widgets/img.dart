import 'package:flutter/material.dart';

class Img extends StatelessWidget {
  final String imgURL;

  const Img({Key? key, required this.imgURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    final bool isVertical = orientation == Orientation.portrait;

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        imgURL,
        width: isVertical ? 300 : 200,
        height: isVertical ? 200 : 150,
        fit: BoxFit.fill,
      ),
    );
  }
}
