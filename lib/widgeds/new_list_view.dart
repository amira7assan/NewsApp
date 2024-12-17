import 'package:flutter/material.dart';
import 'package:newsapp/serveses/NewsServes.dart';
import 'package:newsapp/widgeds/news_title.dart';
import 'package:newsapp/models/article_model.dart';
class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}