import 'package:flutter/material.dart';

class BarItemPage extends StatelessWidget {
  const BarItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        children: <Widget>[
          Column(
            children: [
              Icon(Icons.person),
              Text('User')
            ],
          )
        ],
      ),
    );
  }
}
