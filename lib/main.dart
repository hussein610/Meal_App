import 'package:flutter/material.dart';
import 'package:resturant/Screens/Meal%20Info.dart';
import 'package:resturant/Screens/Meal%20Screen.dart';

import 'Screens/Home Screen.dart';

main() {
  runApp(MaterialApp(
    routes: {"S1": (context) => MealScreen(), "S2": (context) => MealInfo()},
    debugShowCheckedModeBanner: false,
    home: Home_screen(),
  ));
}
