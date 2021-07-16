import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double size = (MediaQuery.of(context).size.width / 2) - 2.0;
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(1.0, 1.0, 0.5, 1.0),
          child: Container(
            height: size,
            width: size,
            child: Image.asset('assets/images/java_script.png'),
          ),
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(0.5, 1.0, 1.0, 1.0),
          child: Container(
            height: size,
            width: size,
            child: Image.asset('assets/images/java_script.png'),
          ),
        )
      ],
    );
  }
}