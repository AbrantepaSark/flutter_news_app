// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../Models/News.dart';

//import '../Providers/NewsProvider.dart';

import './news.dart';

class SearchResultSection extends StatelessWidget {
  final double width;
  final List<News> news;

  const SearchResultSection(this.width, this.news);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: news.isNotEmpty ? news.length : 1,
      itemBuilder: (ctx, i) => news.isNotEmpty
          ? Column(
              children: [
                SingleNews(width: width, data: news[i]),
                const SizedBox(height: 20),
              ],
            )
          : const Center(
              child: Text('No result available'),
            ),
    );
  }
}
