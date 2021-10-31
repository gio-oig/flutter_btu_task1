import 'package:flutter/material.dart';

class Img extends StatelessWidget {
  final String imgURL;
  const Img({Key? key, required this.imgURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imgURL,
      width: 300,
      height: 300,
    );
  }
}
