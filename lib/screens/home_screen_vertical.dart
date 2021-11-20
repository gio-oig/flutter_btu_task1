import 'package:flutter/material.dart';
import 'package:flutter_btu_task1/provider/animal_provider.dart';
import 'package:flutter_btu_task1/widgets/button.dart';
import 'package:flutter_btu_task1/widgets/description.dart';
import 'package:flutter_btu_task1/widgets/images.dart';
import 'package:provider/provider.dart';

class HomeScreenVertival extends StatelessWidget {
  const HomeScreenVertival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RenderImages(
            animalName: context.watch<AnimalProvider>().animal,
          ),
          DescriptionCard(description: context.watch<AnimalProvider>().desc),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                content: 'elephent',
              ),
              Button(
                content: 'tiger',
              )
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
              ),
              Button(
                content: 'bear',
              ),
            ],
          )
        ],
      ),
    );
  }
}
