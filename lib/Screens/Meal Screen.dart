import 'package:flutter/material.dart';
import 'package:resturant/Widgets/Meal%20Item.dart';
import 'package:resturant/data.dart';

import '../Model/Meal.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String id = data["id"];
    List<Meal> MealFilter = MEALS.where((i) {
      return i.categoryNumber.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          data["name"],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(m: MealFilter[index]);
        },
        itemCount: MealFilter.length,
      ),
    );
  }
}
