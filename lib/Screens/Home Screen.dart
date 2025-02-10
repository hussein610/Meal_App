import 'package:flutter/material.dart';
import 'package:resturant/Widgets/Category%20Item.dart';

import '../data.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return CategoryItem(
              c: CATEGORIES[index],
            );
          },
          itemCount: 4,
        ));
  }
}
