import 'package:flutter/material.dart';
import 'package:instagram/components/stories_component.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 7,
      itemBuilder: (context, index) {
        return StoriesComponent();
      },
    );
  }
}