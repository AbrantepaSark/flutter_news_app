import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final Widget child;
  final double width;
  final Color color;

  const SubmitButton(
      {Key? key, required this.width, required this.color, required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 45,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: child,
    );
  }
}
