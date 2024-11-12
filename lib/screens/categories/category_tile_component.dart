import 'package:flutter/material.dart';
import '../../models/category.dart';
import '../recipe/recipe_listing_screen.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_)=> RecipeListingScreen(category: category,),),
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [category.color, category.color.withOpacity(0.7),],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(category.name),
      ),
    );
  }
}