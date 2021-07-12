import 'package:flutter/material.dart';
import 'package:instagram/models/custom_icon.dart';

class TopBar extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Row(
        children: [
          CustomIcon(Icons.add_circle_outline),
          CustomIcon(Icons.favorite_border),
          CustomIcon(Icons.send)
        ]
      ),
    );
  }
}

