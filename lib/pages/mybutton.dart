import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.color, required this.onTap});
  final Color? color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        height: 100,
        width: 100,
        padding: EdgeInsets.all(25),
        child: Center(
          child: Text("tap"),
        ),
      ),
    );
  }
}
