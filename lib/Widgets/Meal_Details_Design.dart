import 'package:flutter/material.dart';

import '../Models/Meal.dart';
import 'package:Zappy/Screens/Meal_Details_Screen.dart';

class MealDetailsDesign extends StatelessWidget {
  final String mealID;
  final List<String> categories;
  final String mealTitle;
  final String mealImageURL;
  final List<String> ingredients;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const MealDetailsDesign({
    super.key,
    required this.mealID,
    required this.categories,
    required this.mealTitle,
    required this.mealImageURL,
    required this.ingredients,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.steps,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });

  String get complexityList {
    switch (complexity) {
      case Complexity.simple:
        return 'Simple';
      case Complexity.challenging:
        return 'Challenging';
      case Complexity.hard:
        return 'Hard';
      default:
        return 'unknown';
    }
  }

  String get affordabilityList {
    switch (affordability) {
      case Affordability.affordable:
        return 'Affordable';
      case Affordability.costly:
        return 'Costly';
      case Affordability.luxurious:
        return 'Luxurious';
      default:
        return 'unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150.0,
            decoration: const BoxDecoration(
                // boxShadow: [
                //   BoxShadow(blurRadius: 3, color: Colors.grey, spreadRadius: 2)
                // ],
                ),
            margin: const EdgeInsets.all(15.0),
            child: Image.network(
              mealImageURL,
              fit: BoxFit.contain,
            ),
          ),
          Column(
            children: [
              const Text(
                'Ingredients',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    letterSpacing: 1.5),
              ),
              Container(
                height: 100,
                width: 500,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(
                  // color: Colors.grey,
                  // ),
                  // borderRadius: BorderRadius.circular(200.0),
                ),
                child: Scrollbar(
                  thumbVisibility: true,
                  trackVisibility: true,
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Text(
                          ingredients[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Righteous',
                            fontSize: 14.0,
                          ),
                        );
                      },
                      itemCount: ingredients.length),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Steps...',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    letterSpacing: 1.5),
              ),
            ],
          ),
          Container(
            height: 200,
            width: 500,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(
              //   color: Colors.grey,
              //   width: 2,
              // ),
              // borderRadius: BorderRadius.circular(200.0)
            ),
            child: Scrollbar(
              thumbVisibility: true,
              trackVisibility: true,
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(
                        '( ${(index + 1)} )',
                        style: const TextStyle(
                            fontFamily: 'Righteous', fontSize: 12.0),
                      ),
                      title: Text(
                        steps[index],
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Righteous',
                          fontSize: 14.0,
                        ),
                      ),
                    );
                  },
                  itemCount: steps.length),
            ),
          ),
        ],
      ),
    );
  }
}