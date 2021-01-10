import 'package:flutter/material.dart';
import 'package:homeio/models/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  RecipeCard(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: FadeInImage(
              image: NetworkImage(recipe.image),
              placeholder: AssetImage('assets/img-loading.png'),
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: ListTile(
              title: Text(recipe.title, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(recipe.category),
            ),
          ),
        ],
      ),
    );
  }
}
