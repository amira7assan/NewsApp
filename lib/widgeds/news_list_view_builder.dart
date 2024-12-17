import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/serveses/NewsServes.dart';
import 'package:newsapp/models/article_model.dart';
import 'new_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getTopHeadlines(category: widget.category);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
      child: Center(child: CircularProgressIndicator()),
    )
        : NewsListView(
      articles: articles,
    );
  }
}
