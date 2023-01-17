enum Complexity { simple, challenging, hard }

enum Affordability { affordable, costly, luxurious }

class Meal {
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

  const Meal({
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
}