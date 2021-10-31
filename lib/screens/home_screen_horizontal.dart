import 'package:flutter/material.dart';
import 'package:flutter_btu_task1/main.dart';
import 'package:flutter_btu_task1/widgets/button.dart';
import 'package:flutter_btu_task1/widgets/description.dart';
import 'package:flutter_btu_task1/widgets/images.dart';

class HomeScreenHorizontal extends StatelessWidget {
  final Function(String animalName) changeAnimal;
  const HomeScreenHorizontal({Key? key, required this.changeAnimal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              RenderImages(
                animalName: animal,
              ),
              DescriptionCard(description: animalDesc[animal]),
            ])),
        Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                  height: 30,
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
            )),
      ],
    );
  }
}
