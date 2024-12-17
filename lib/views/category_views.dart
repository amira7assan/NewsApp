import 'package:flutter/material.dart';
import 'package:newsapp/serveses/NewsServes.dart';
import 'package:newsapp/widgeds/news_title.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:dio/dio.dart';

import '../widgeds/news_list_view_builder.dart';
class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
