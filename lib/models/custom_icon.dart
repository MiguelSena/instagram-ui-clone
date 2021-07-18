import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData _icon;
  final Function onClick;

  CustomIcon(this._icon, {@required this.onClick});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(_icon),
      onPressed: onClick
    );
  }
}