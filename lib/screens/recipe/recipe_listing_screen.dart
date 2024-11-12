import 'package:flutter/material.dart';
import '../../data/recipes.dart';
import '../../models/category.dart';

class RecipeListingScreen extends StatelessWidget {
  const RecipeListingScreen({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.name
        ),
        backgroundColor: category.color,
      ),
      body: ListView.builder(itemBuilder: (_, index){
        final recipe = recipes[index];
        return Card(
          child: Column(
            children: [
              AspectRatio(aspectRatio: 3/2,
              child: recipe.imageUrl != null ? Image.network(recipe.imageUrl!,
              fit: BoxFit.cover,) : Text('No Image',),
              ),
              Text(recipe.name),
            ],
          ),
        );
      },itemCount: recipes.length,
      ),
    );
  }
}