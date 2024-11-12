import 'package:flutter/material.dart';
import 'screens/categories/category_screen.dart';

void main(){
  runApp(RecipeScreen());
}

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoriesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}