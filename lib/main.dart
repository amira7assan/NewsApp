import 'package:flutter/material.dart';
import 'package:newsapp/serveses/NewsServes.dart';
import 'package:newsapp/views/homw_view.dart';
//import 'package:news_app_ui_setup/views/home_view.dart';
import 'package:dio/dio.dart';
//to run correctly
//flutter run -d chrome --web-renderer html     in terminal

void main() {
  //NewsServeses(Dio()).getGenralNews();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
