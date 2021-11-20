import 'package:flutter/material.dart';
import 'package:flutter_btu_task1/provider/animal_provider.dart';
import 'package:flutter_btu_task1/screens/home_screen_horizontal.dart';
import 'package:flutter_btu_task1/screens/home_screen_vertical.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => AnimalProvider())],
        child: AnimalsApp()),
  );
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
              return HomeScreenHorizontal();
            } else {
              return HomeScreenVertival();
            }
          },
        ));
  }
}
