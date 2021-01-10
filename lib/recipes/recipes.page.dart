import 'package:flutter/material.dart';
import 'package:homeio/recipes/recipe-list.dart';

class RecipesPage extends StatefulWidget {
  @override
  _RecipesPageState createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Search'),
      RecipeList(),
    ]);
  }
}
