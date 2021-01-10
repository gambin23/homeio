import 'package:flutter/material.dart';

import 'home.page.dart';
import 'recipes/recipes.page.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _index = 0;
  final List<Widget> _children = [
    HomePage(Colors.amber),
    HomePage(Colors.blue),
    RecipesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home.io')),
      body: _children[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Family', icon: Icon(Icons.supervised_user_circle_rounded)),
          BottomNavigationBarItem(label: 'Recipes', icon: Icon(Icons.food_bank)),
        ],
      ),
    );
  }

  void onTabTapped(int i) {
    setState(() => _index = i);
  }
}
