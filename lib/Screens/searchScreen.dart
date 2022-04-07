// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Models/News.dart';
import '../Models/dummy.dart';

import '../Containers/searchBar.dart';
//import '../Containers/news.dart';
import '../Containers/searchResult.dart';

class SearchPage extends StatefulWidget {
  static const routeName = "search";

  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<News> newsData = [...data];

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SearchBar(),
          Container(
            height: 30,
            alignment: Alignment.centerLeft,
            child: const Text('Results'),
          ),
          const SizedBox(height: 5),
          Expanded(
              child: isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : newsData.isEmpty
                      ? const Center(
                          child: Text('No connection. check network'))
                      : SearchResultSection(screenWidth, newsData)),
        ],
      ),
    );
  }
}
