import 'package:flutter/material.dart';
import 'package:instagram/components/publication/publication.dart';
import 'package:instagram/components/stories/stories.dart';

class PublicationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return index == 0 ?  SizedBox(
          child: new Stories(),
          height: MediaQuery.of(context).size.height * 0.10
        ) : Publication();
      },
    );
  }
}