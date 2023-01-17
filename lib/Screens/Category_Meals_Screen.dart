import 'package:flutter/material.dart';

import '../Widgets/Meal_Design.dart';
import 'package:Zappy/Zappy_Data/Meal_Data.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({super.key});

  // final String title;
  // const CategoryMealsScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['categoryTitle'].toString();
    final categoryID = routeArgs['categoryID'].toString();
    final categoryMeal = MealData.mealDataList.where((eachMealItem) {
      return eachMealItem.categories.contains(categoryID);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFF55353),
          elevation: 0,
          centerTitle: true,
          title: Text(
            categoryTitle,
            style: const TextStyle(
              fontFamily: 'Righteous',
              color: Colors.white,
              fontSize: 18.0,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealDesign(
              mealID: categoryMeal[index].mealID,
              mealTitle: categoryMeal[index].mealTitle,
              mealImageURL: categoryMeal[index].mealImageURL,
              duration: categoryMeal[index].duration,
              affordability: categoryMeal[index].affordability,
              complexity: categoryMeal[index].complexity,
            );
          },
          itemCount: categoryMeal.length,
        ));
  }
}