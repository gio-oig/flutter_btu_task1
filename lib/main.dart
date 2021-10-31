import 'package:flutter/material.dart';
import 'package:flutter_btu_task1/screens/home_screen_horizontal.dart';
import 'package:flutter_btu_task1/screens/home_screen_vertical.dart';

String animal = "bear";
var animalDesc = {
  'bear':
      'Bears hibernate during winter, but aren’t sleeping the whole time. Hibernation for bears simply means they don’t need to eat or drink, and rarely urinate or defecate (or not at all). There is strong evolutionary pressure for bears to stay in their dens during winter, if there is little or no food available',
  'tiger':
      'Tigers are the most beautiful, strongest(in my oppinion) and one of the scarry animals',
  'giraffe': 'Giraffes are the tallest aimals in the observable universe',
  'elephent':
      'Elephents are the strongest and one of the  most lovely animals in the milky way galaxy'
};

void main() {
  runApp(AnimalsApp());
}

class AnimalsApp extends StatelessWidget {
  const AnimalsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animals App",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void changeAnimal(String newAnimal) {
    setState(() {
      animal = newAnimal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animals"),
          centerTitle: true,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.landscape) {
              return HomeScreenHorizontal(changeAnimal: changeAnimal);
            } else {
              return HomeScreenVertival(changeAnimal: changeAnimal);
            }
          },
        ));
  }
}
