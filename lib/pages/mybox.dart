import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key, this.child, required this.color});

  final Widget? child;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      width: 200,
      padding: EdgeInsets.all(50),
      child: child,
    );
  }
}
