import 'package:flutter/cupertino.dart';

class AnimalProvider with ChangeNotifier {
  String _animal = "bear";
  var animalDesc = {
    'bear':
        'Bears hibernate during winter, but aren’t sleeping the whole time. Hibernation for bears simply means they don’t need to eat or drink, and rarely urinate or defecate (or not at all). There is strong evolutionary pressure for bears to stay in their dens during winter, if there is little or no food available',
    'tiger':
        'Tigers are the most beautiful, strongest(in my oppinion) and one of the scarry animals',
    'giraffe': 'Giraffes are the tallest aimals in the observable universe',
    'elephent':
        'Elephents are the strongest and one of the  most lovely animals in the milky way galaxy'
  };

  String get animal => _animal;
  String? get desc => animalDesc[animal];

  void changeAnimal(String name) {
    _animal = name;
    notifyListeners();
  }
}
