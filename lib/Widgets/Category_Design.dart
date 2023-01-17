import 'package:flutter/material.dart';

class CategoryDesign extends StatelessWidget {
  final String categoryID;
  final String categoryTitle;
  final String categoryImageURL;
  static const routeName = '/Category_Meals_Screen';
  const CategoryDesign(
      {super.key,
      required this.categoryID,
      required this.categoryTitle,
      required this.categoryImageURL});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            Navigator.pushNamed(context, routeName, arguments: {
              'categoryTitle': categoryTitle,
              'categoryID': categoryID
            });
          },
          child: Container(
            height: 100.0,
            width: 80.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(blurRadius: 5, color: Colors.grey, spreadRadius: 4)
              ],
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(categoryImageURL),
            ),
          ),
        ),
        Text(
          categoryTitle,
          style: const TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 15.0,
            letterSpacing: 2,
          ),
        ),
      ],
    );
  }
}