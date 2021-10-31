import 'package:flutter/material.dart';

import 'img.dart';

class RenderImages extends StatelessWidget {
  final String animalName;
  const RenderImages({Key? key, this.animalName = 'bear'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (animalName == "elephent")
      return Img(
          imgURL:
              'https://images.unsplash.com/photo-1554897916-5d03486262de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80');
    if (animalName == "tiger")
      return Img(
          imgURL:
              'https://images.unsplash.com/photo-1508817628294-5a453fa0b8fb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80');
    if (animalName == "giraffe")
      return Img(
          imgURL:
              'https://images.unsplash.com/photo-1522107992019-d841a73de1f4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2070&q=80');

    return Img(
      imgURL:
          'https://images.unsplash.com/photo-1589648751789-c8ecb7a88bd5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
    );
  }
}
