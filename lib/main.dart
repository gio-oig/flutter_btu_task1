import 'package:flutter/material.dart';

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
  String animal = "bear";

  void changeAnimal(String newAnimal) {
    setState(() {
      animal = newAnimal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animals App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (animal == "elephent")
              Image.network(
                "https://images.unsplash.com/photo-1554897916-5d03486262de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80",
                width: 300,
                height: 300,
              ),
            if (animal == "tiger")
              Image.network(
                "https://images.unsplash.com/photo-1508817628294-5a453fa0b8fb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80",
                width: 300,
                height: 300,
              ),
            if (animal == "jirafa")
              Image.network(
                "https://images.unsplash.com/photo-1610186356191-880ceaa884f3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=747&q=80",
                width: 300,
                height: 300,
              ),
            if (animal == "bear")
              Image.network(
                "https://images.unsplash.com/photo-1589648751789-c8ecb7a88bd5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80",
                width: 300,
                height: 300,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      changeAnimal("elephent");
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100, 40)),
                    child: Text("elephent")),
                ElevatedButton(
                    onPressed: () {
                      changeAnimal("tiger");
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100, 40)),
                    child: Text("tiger"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      changeAnimal("jirafa");
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100, 40)),
                    child: Text("jirafa")),
                ElevatedButton(
                    onPressed: () {
                      changeAnimal("bear");
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100, 40)),
                    child: Text("bear"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
