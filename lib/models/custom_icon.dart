import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData _icon;
  final Function onTap;

  CustomIcon(this._icon, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(_icon),
      onPressed: () {}
    );
  }
}