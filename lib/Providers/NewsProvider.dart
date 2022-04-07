// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Models/News.dart';

class NewsProvider with ChangeNotifier {
  List<News> news = [];
}
