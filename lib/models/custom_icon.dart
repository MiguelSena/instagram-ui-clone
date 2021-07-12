import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;

  CustomIcon(this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(icon),
    );
  }
}