import 'package:flutter/material.dart';
import 'package:resturant/Model/Meal.dart';

class MealItem extends StatelessWidget {
  final Meal m;
  const MealItem({super.key, required this.m});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          alignment: Alignment.center,
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage(m.imageUrl),
                width: 130,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
              Text(
                m.title,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "S2", arguments: m.id);
                  },
                  icon: Icon(Icons.navigate_next_outlined))
            ],
          )),
    );
  }
}
