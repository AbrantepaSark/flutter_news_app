import 'package:flutter/material.dart';
import 'package:flutter_news_app/Models/News.dart';

import '../Containers/channelBadge.dart';
import '../Containers/news.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'News Feeds from',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Text(
              'DIARIES',
              style: TextStyle(
                color: Color.fromARGB(255, 109, 60, 60),
                fontSize: 42,
                //letterSpacing: -3,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bellota',
              ),
            ),
            const SizedBox(height: 10),
            lable('Top Channels'),
            const SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ChannelBadge(
                    text: 'BBC News',
                  ),
                  ChannelBadge(
                    text: 'YAHOO',
                  ),
                  ChannelBadge(
                    text: 'The Guardian',
                  ),
                  ChannelBadge(
                    text: 'ReadWrite',
                  ),
                  ChannelBadge(
                    text: 'Wired',
                  ),
                  ChannelBadge(
                    text: 'Hacker News',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            lable('Top Stories'),
            const SizedBox(height: 10),
            const SingleNews(source: '', title: '', date: ''),
            const SizedBox(height: 15),
            // const SingleNews(source: '', title: '', date: ''),
            // const SizedBox(height: 15),
            // const SingleNews(source: '', title: '', date: ''),
            // const SizedBox(height: 15),
            // const SingleNews(source: '', title: '', date: ''),
            // const SizedBox(height: 15),
            // const SingleNews(source: '', title: '', date: ''),
            // const SizedBox(height: 15),
            // const SingleNews(source: '', title: '', date: ''),
          ],
        ),
      ),
    );
  }

  Container lable(String text) {
    return Container(
      padding: const EdgeInsets.only(left: 5),
      height: 40,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      color: Colors.grey.shade200,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
