import 'package:flutter/material.dart';

class AppLargeText extends StatefulWidget {
  double size;
  final String text;
  final Color color;
  AppLargeText({super.key, this.size = 30, required this.text, this.color = Colors.black54});
  @override
  State<AppLargeText> createState() => _AppLargeTextState();
}

class _AppLargeTextState extends State<AppLargeText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        fontSize: widget.size.toDouble(),
        color: widget.color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
