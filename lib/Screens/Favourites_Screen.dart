import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF55353),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Favourites',
          style: const TextStyle(
            fontFamily: 'Righteous',
            color: Colors.white,
            fontSize: 18.0,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text('Favourites'),
      ),
    );
  }
}