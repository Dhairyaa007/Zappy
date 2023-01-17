import 'package:flutter/material.dart';

import '../Screens/Favourites_Screen.dart';
import '../Screens/Home_Screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget> _pages = [HomeScreen(), Favourites()];
  int _selectedPage = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 10.0,
          backgroundColor: Colors.white,
          selectedLabelStyle: const TextStyle(fontFamily: 'Pacifico'),
          unselectedLabelStyle: const TextStyle(fontFamily: 'Pacifico'),
          unselectedFontSize: 14.0,
          selectedFontSize: 14.0,
          selectedItemColor: const Color(0xFFF55353),
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Color(0xFFF55353)),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          currentIndex: _selectedPage,
          onTap: _selectPage,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
                semanticLabel: 'Categories',
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                semanticLabel: 'Favourites',
              ),
              label: 'Favourites',
            ),
          ]),
    );
  }
}