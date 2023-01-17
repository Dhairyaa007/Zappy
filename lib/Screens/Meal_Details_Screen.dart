import 'package:flutter/material.dart';

import '../Widgets/Meal_Details_Design.dart';
import '../Zappy_Data/Meal_Data.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = '/Meal_Details_Screen';

  const MealDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final mealID = routeArgs['mealID'].toString();
    final mealTitle = routeArgs['mealTitle'].toString();
    final selectedMeal = MealData.mealDataList
        .firstWhere((selectedMealItem) => selectedMealItem.mealID == mealID);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFF55353),
          elevation: 0,
          centerTitle: true,
          title: Text(
            mealTitle,
            style: const TextStyle(
              fontFamily: 'Righteous',
              color: Colors.white,
              fontSize: 18.0,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: MealDetailsDesign(
          mealID: selectedMeal.mealID,
          mealTitle: selectedMeal.mealTitle,
          mealImageURL: selectedMeal.mealImageURL,
          duration: selectedMeal.duration,
          affordability: selectedMeal.affordability,
          complexity: selectedMeal.complexity,
          categories: selectedMeal.categories,
          ingredients: selectedMeal.ingredients,
          isGlutenFree: selectedMeal.isGlutenFree,
          isLactoseFree: selectedMeal.isLactoseFree,
          isVegan: selectedMeal.isVegan,
          isVegetarian: selectedMeal.isVegetarian,
          steps: selectedMeal.steps,
        ));
  }
}