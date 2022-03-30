import 'package:flutter/material.dart';

class SingleNews extends StatelessWidget {
  final String title;
  final String source;
  final String date;
  const SingleNews(
      {Key? key, required this.title, required this.source, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          child: SizedBox(
            width: double.infinity,
            height: 220,
            child: Image.asset('assets/images/science.jpg', fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 50,
          child: Container(
            //width: double.infinity,
            height: 100,
            color: Colors.black38,
            child: const Text(
              'The economic crises in the country: The way out.',
              style: TextStyle(fontSize: 2),
            ),
          ),
        )
      ],
    );
  }
}
