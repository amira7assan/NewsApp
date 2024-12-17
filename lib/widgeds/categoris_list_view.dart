import 'package:flutter/material.dart';
import 'package:newsapp/widgeds/category_card.dart';
import 'package:newsapp/models/category_model.dart';

import 'category_card.dart';


class CategorisListViews extends StatelessWidget {
  const CategorisListViews({super.key});


  final List<CategoryModel> categores = const [
     CategoryModel(image: 'https://images.unsplash.com/photo-1708234530930-2e2a1c2d5811?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YnVzc2luZXNzfGVufDB8fDB8fHww', categoryname: "business"),
     CategoryModel(image: 'https://images.unsplash.com/flagged/photo-1590183030142-efad5a97612f?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bmV0ZmxpeHxlbnwwfHwwfHx8MA%3D%3D', categoryname: "entertainment"),
     CategoryModel(image: 'https://images.unsplash.com/photo-1476480862126-209bfaa8edc8?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aGVhbHRofGVufDB8fDB8fHww', categoryname: "health"),
     CategoryModel(image: 'https://images.unsplash.com/photo-1486825586573-7131f7991bdd?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2NpZW5jZXxlbnwwfHwwfHx8MA%3D%3D', categoryname: "science"),
     CategoryModel(image: 'https://images.unsplash.com/photo-1518770660439-4636190af475?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8VEVDSE5PTE9HWXxlbnwwfHwwfHx8MA%3D%3D', categoryname: "technology"),
     CategoryModel(image: 'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c3BvcnR8ZW58MHx8MHx8fDA%3D', categoryname: "sports"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categores.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categores[index],
            );
          }),
    );
  }}

