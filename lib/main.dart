import 'package:flutter/material.dart';
import 'package:flutter_btu_task1/widgets/button.dart';
import 'package:flutter_btu_task1/widgets/img.dart';

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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (animal == "elephent")
              Img(
                  imgURL:
                      'https://images.unsplash.com/photo-1554897916-5d03486262de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80'),
            if (animal == "tiger")
              Img(
                  imgURL:
                      'https://images.unsplash.com/photo-1508817628294-5a453fa0b8fb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80'),
            if (animal == "giraffe")
              Img(
                  imgURL:
                      'https://images.unsplash.com/photo-1610186356191-880ceaa884f3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=747&q=80'),
            if (animal == "bear")
              Img(
                imgURL:
                    'https://images.unsplash.com/photo-1589648751789-c8ecb7a88bd5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
              ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Text(
                      '${animalDesc[animal]}',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
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
      ),
    );
  }
}

class HomeScreenVertival extends StatelessWidget {
  const HomeScreenVertival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
