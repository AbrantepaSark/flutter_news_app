import 'package:flutter/material.dart';

import '../Models/News.dart';

class SingleNews extends StatelessWidget {
  final double width;
  final News data;

  const SingleNews({
    Key? key,
    required this.width,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          child: SizedBox(
            width: width,
            height: 220,
            child: Image.asset(data.urlToImage, fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 30,
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(15),
              width: width - 100,
              height: 120,
              color: const Color.fromARGB(155, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data.title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data.source,
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          data.publishedAt,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
