import 'package:flutter/material.dart';

import '../Model/Meal.dart';
import '../data.dart';

class MealInfo extends StatelessWidget {
  const MealInfo({super.key});
  @override
  Widget build(BuildContext context) {
    String id = ModalRoute.of(context)!.settings.arguments as String;
    Meal OneMealInfo = MEALS.firstWhere((i) {
      return i.id.contains(id);
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(OneMealInfo.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            spacing: 10,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    image: AssetImage(OneMealInfo.imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                "Name: ${OneMealInfo.title}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Description:\n${OneMealInfo.description}",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
              ),
              Text(
                "Salary: ${OneMealInfo.salary}",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              Text("Time: ${OneMealInfo.time}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
