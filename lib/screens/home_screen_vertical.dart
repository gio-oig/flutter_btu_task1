import 'package:flutter/material.dart';
import 'package:flutter_btu_task1/widgets/button.dart';
import 'package:flutter_btu_task1/widgets/description.dart';
import 'package:flutter_btu_task1/widgets/images.dart';
import 'package:flutter_btu_task1/widgets/img.dart';

import '../main.dart';

class HomeScreenVertival extends StatelessWidget {
  final Function(String animalName) changeAnimal;

  const HomeScreenVertival({Key? key, required this.changeAnimal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RenderImages(
            animalName: animal,
          ),
          DescriptionCard(description: animalDesc[animal]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                content: 'elephent',
                onClick: changeAnimal,
              ),
              Button(content: 'tiger', onClick: changeAnimal)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                content: 'giraffe',
                onClick: changeAnimal,
              ),
              Button(content: 'bear', onClick: changeAnimal),
            ],
          )
        ],
      ),
    );
  }
}
