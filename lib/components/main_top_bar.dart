import 'package:flutter/material.dart';
import 'package:instagram/models/custom_icon.dart';

class TopBar extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIcon(Icons.add_circle_outline, onClick: () {}),
        CustomIcon(Icons.favorite_border, onClick: () {}),
        CustomIcon(Icons.send, onClick: () {})
      ]
    );
  }
}

