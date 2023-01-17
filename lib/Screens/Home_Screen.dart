import 'package:flutter/material.dart';

import '../Widgets/Category_Design.dart';
import '../Zappy_Data/Category_Data.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
          backgroundColor: const Color(0xFFF55353),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'ZAPPY',
            style: TextStyle(
              fontFamily: 'Righteous',
              color: Colors.white,
              fontSize: 28.0,
              letterSpacing: 3.5,
              fontWeight: FontWeight.w900,
            ),
          )),
      body: GridView.builder(
        itemBuilder: (ctx, index) {
          return CategoryDesign(
            categoryID: CategoryData.categoryDataList[index].categoryID,
            categoryTitle: CategoryData.categoryDataList[index].categoryTitle,
            categoryImageURL:
                CategoryData.categoryDataList[index].categoryImageURL,
          );
        },
        itemCount: CategoryData.categoryDataList.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300.0,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0),
      ),
    );
  }
}