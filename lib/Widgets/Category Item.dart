import 'package:flutter/material.dart';
import 'package:resturant/Model/Category.dart';

class CategoryItem extends StatelessWidget {
  final Category c;
  const CategoryItem({super.key, required this.c});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "S1",
            arguments: {"id": c.id, "name": c.name});
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              alignment: Alignment.bottomCenter,
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(c.image), fit: BoxFit.fill)),
              child: Container(
                alignment: Alignment.center,
                color: Colors.white54,
                height: 30,
                width: double.infinity,
                child: Text(
                  c.name,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )),
        ),
      ),
    );
    ;
  }
}
