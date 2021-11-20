import 'package:flutter/material.dart';
import 'package:flutter_btu_task1/provider/animal_provider.dart';
import 'package:provider/provider.dart';

class Button extends StatelessWidget {
  final String content;
  const Button({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context.read<AnimalProvider>().changeAnimal(content);
        },
        style: ElevatedButton.styleFrom(
            fixedSize: Size(100, 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          content,
          style: TextStyle(fontSize: 15),
        ));
  }
}
