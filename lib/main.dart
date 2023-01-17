import 'package:Zappy/Screens/BottamNavigation.dart';
import 'package:Zappy/Screens/Meal_Details_Screen.dart';
import 'package:Zappy/Widgets/Category_Design.dart';
import 'package:Zappy/Screens/Category_Meals_Screen.dart';
import 'package:flutter/material.dart';
import 'Screens/Home_Screen.dart';

void main() {
  runApp(const ZappyHome());
}

class ZappyHome extends StatelessWidget {
  const ZappyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationScreen(),
      routes: {
        CategoryDesign.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailsScreen.routeName: (ctx) => MealDetailsScreen(),
      },
    );
  }
}