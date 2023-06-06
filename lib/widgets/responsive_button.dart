import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({super.key, this.width, this.isResponsive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFF1E88E5),
        borderRadius: BorderRadius.circular(10),
      ),
        child: Icon(Icons.arrow_forward_ios, color: Colors.blue,)
    );
  }
}
