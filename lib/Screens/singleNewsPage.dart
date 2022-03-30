import 'package:flutter/material.dart';

class SingleNewsPage extends StatelessWidget {
  static const routeName = 'singlePage';
  const SingleNewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Single news'),
      ),
    );
  }
}
