import 'package:flutter/material.dart';
import '../../data/categories.dart';
import 'category_tile_component.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pinoy Recipe'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3/2
          ), 
        itemBuilder: (_, index){
          final category= categories[index];
          return CategoryTile(category: category);
          },
          itemCount: categories.length,
        ),
      ),
    );
  }
}