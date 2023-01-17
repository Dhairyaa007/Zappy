import 'package:flutter/material.dart';

import '../Models/Meal.dart';
import 'package:Zappy/Screens/Meal_Details_Screen.dart';

class MealDesign extends StatelessWidget {
  static const routeName = '/Meal_Details_Screen';
  final String mealID;
  // final List<String> categories;
  final String mealTitle;
  final String mealImageURL;
  // final List<String> ingredients;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  // final List<String> steps;
  // final bool isGlutenFree;
  // final bool isLactoseFree;
  // final bool isVegan;
  // final bool isVegetarian;

  const MealDesign({
    super.key,
    required this.mealID,
    // required this.categories,
    required this.mealTitle,
    required this.mealImageURL,
    // required this.ingredients,
    required this.duration,
    required this.complexity,
    required this.affordability,
    // required this.steps,
    // required this.isGlutenFree,
    // required this.isLactoseFree,
    // required this.isVegan,
    // required this.isVegetarian,
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
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, MealDetailsScreen.routeName,
            arguments: {'mealID': mealID, 'mealTitle': mealTitle});
      },
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        margin: const EdgeInsets.all(20.0),
        elevation: 10.0,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    child: Image.network(
                      mealImageURL,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    bottom: 20.0,
                    right: 10.0,
                    child: Container(
                      width: 260.0,
                      color: Colors.white54,
                      child: Text(
                        mealTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Pacifico',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            letterSpacing: 1.5),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule, size: 20.0),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        '${duration.toString()} Minutes',
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work_outline),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        complexityList,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.money_rounded),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        affordabilityList,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}