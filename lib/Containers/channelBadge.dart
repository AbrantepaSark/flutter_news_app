// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ChannelBadge extends StatelessWidget {
  final String text;
  const ChannelBadge({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          height: 60,
          width: 100,
          //color: Colors.white,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: const Icon(Icons.add_chart),
        ),
        Text(text)
      ],
    );
  }
}
