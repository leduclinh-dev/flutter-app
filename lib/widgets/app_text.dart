import 'package:flutter/material.dart';

class AppText extends StatefulWidget {
  double size;
  final String text;
  final Color color;
  AppText({super.key, this.size = 30, required this.text, this.color = Colors.black54});
  @override
  State<AppText> createState() => _AppTextState();
}

class _AppTextState extends State<AppText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        fontSize: widget.size.toDouble(),
        color: widget.color,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
