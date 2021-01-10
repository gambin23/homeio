import 'package:flutter/material.dart';
import 'package:homeio/models/recipe.dart';
import 'package:homeio/recipes/recipe-card.dart';

class RecipeList extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      title: 'Gnocchi',
      category: 'Pasta',
      image:
          'https://www.cucchiaio.it/content/cucchiaio/it/ricette/2009/12/ricetta-gnocchi-rosa-gratinati/jcr:content/header-par/image_single.img10.jpg/1523003782771.jpg',
    ),
    Recipe(
      title: 'Pasta al Tonno',
      category: 'Pasta',
      image: 'https://www.saltandlavender.com/wp-content/uploads/2020/04/tomato-goat-cheese-pasta-recipe-1-500x500.jpg',
    ),
    Recipe(
      title: 'Ghagin il-Forn',
      category: 'Pasta',
      image: 'https://i.pinimg.com/originals/0d/ef/23/0def23f2039158c019df8c234bfaf930.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: recipes.map((recipe) => RecipeCard(recipe)).toList(),
      ),
    );
  }
}
